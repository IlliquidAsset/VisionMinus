.class public Lcom/powervision/aircraft/ui/views/CameraMenuView;
.super Landroid/widget/LinearLayout;
.source "CameraMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraControllListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;
.implements Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;,
        Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraMenuView"

.field public static mCurrentItemTextArray:[Ljava/lang/String;

.field public static mItemGilbalAngleArray:[Ljava/lang/String;

.field public static mItemTextEVArray:[Ljava/lang/String;

.field public static mItemTextISOArray:[Ljava/lang/String;

.field public static mItemTextWBArray:[Ljava/lang/String;


# instance fields
.field private ACTION_CODE_POST_PHOTO:I

.field private ACTION_CODE_POST_RECORD:I

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

.field private DISMISS_DIALOG:I

.field private SET_DELAY_PHOTOING_ICON:I

.field private SET_DELAY_PHOTO_ICON:I

.field private SET_MODE_TIME_OUT:I

.field private SET_SWITCH_BTN_DISABLE:I

.field private SET_SWITCH_BTN_ENABLE:I

.field private TOAST_SHOW_TIME:I

.field private TRY_SWITCH_RECORD_TWICE:I

.field private activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

.field private cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

.field private cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

.field private circleBottom:Landroid/widget/TextView;

.field private circleCenter:Landroid/widget/TextView;

.field private circleIndex:[Ljava/lang/String;

.field circleParmasType:I

.field private circleTop:Landroid/widget/TextView;

.field private currentDealyMode:I

.field private currentMode:Ljava/lang/String;

.field private currentSubMode:Ljava/lang/String;

.field private currentTrailSpeed:F

.field private dataCount:I

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;",
            ">;"
        }
    .end annotation
.end field

.field private dataOrder:Z

.field private dataTime:[F

.field private dataX:[F

.field private dataY:[F

.field private dataYaw:[F

.field private dataZ:[F

.field private disposable:Lio/reactivex/disposables/Disposable;

.field doubleCircleMode:Z

.field private isShooting:Z

.field private mCamSdkInstance:Lcom/powervision/natives/PowerCamSDK;

.field private mCamera:Landroid/widget/ImageView;

.field private mCameraSetting:Landroid/widget/ImageView;

.field private mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

.field private mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLSEprogressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mMediaLibrary:Landroid/widget/ImageView;

.field private mPhotoModeIcon:Landroid/widget/ImageView;

.field private mPhotoRecordSelect:Landroid/widget/ImageView;

.field private mStopDelayDialog:Landroidx/appcompat/app/AlertDialog;

.field private mTextTimer:Landroid/widget/TextView;

.field private mToastRunable:Ljava/lang/Runnable;

.field private mToastView:Landroid/widget/TextView;

.field private menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

.field private onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private recordStartTime:J

.field private recordStopTime:J

.field private resId:I

.field private time:I

.field private totalDistance:D

.field private trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

.field private tryNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 110
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->doubleCircleMode:Z

    const/4 p3, 0x1

    .line 121
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleParmasType:I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/powervision/aircraft/ui/views/CameraMenuView$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$1;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastRunable:Ljava/lang/Runnable;

    const/16 v0, 0x190

    .line 133
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->TOAST_SHOW_TIME:I

    .line 135
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_MENU:I

    .line 136
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_RECORD:I

    const/4 v0, 0x2

    .line 137
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_PHOTO:I

    const/4 v0, 0x3

    .line 138
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_RECORD:I

    const/4 v0, 0x4

    .line 139
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_STOP_RECORD:I

    const/4 v0, 0x5

    .line 140
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TAKE_PHOTO:I

    const/4 v1, 0x6

    .line 141
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    const/4 v1, 0x7

    .line 142
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_TIME_CAPTURE:I

    const/16 v1, 0x8

    .line 143
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    const/16 v1, 0x9

    .line 144
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    const/16 v1, 0xa

    .line 145
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    const/16 v1, 0xb

    .line 146
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_PHOTO:I

    const/16 v1, 0xc

    .line 147
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_RECORD:I

    const/16 v1, 0xd

    .line 148
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTOING_ICON:I

    const/16 v1, 0xe

    .line 149
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTO_ICON:I

    const/16 v1, 0xf

    .line 150
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_ENABLE:I

    const/16 v1, 0x10

    .line 151
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_DISABLE:I

    const/16 v1, 0x11

    .line 152
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_MODE_TIME_OUT:I

    const/16 v1, 0x12

    .line 153
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->TRY_SWITCH_RECORD_TWICE:I

    const/16 v1, 0x13

    .line 154
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->DISMISS_DIALOG:I

    .line 157
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    .line 167
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting:Z

    const/4 p3, 0x0

    .line 310
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentTrailSpeed:F

    new-array p3, v0, [F

    .line 311
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataX:[F

    new-array p3, v0, [F

    .line 312
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataY:[F

    new-array p3, v0, [F

    .line 313
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataZ:[F

    new-array p3, v0, [F

    .line 314
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataYaw:[F

    new-array p3, v0, [F

    .line 315
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataTime:[F

    .line 317
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataOrder:Z

    .line 1008
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const-string p2, ""

    .line 1013
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    .line 1014
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    .line 1139
    new-instance p2, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    .line 1406
    new-instance p2, Lcom/powervision/aircraft/ui/views/CameraMenuView$12;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$12;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 1425
    new-instance p2, Lcom/powervision/aircraft/ui/views/CameraMenuView$13;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$13;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    .line 1442
    new-instance p2, Lcom/powervision/aircraft/ui/views/CameraMenuView$14;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$14;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    .line 179
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    .line 180
    move-object p2, p1

    check-cast p2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 181
    sget p2, Lcom/powervision/aircraft/R$layout;->aircraft_camera_menu_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 183
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->initView()V

    .line 184
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleIndex:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataYaw:[F

    return-object p0
.end method

.method static synthetic access$1102(Lcom/powervision/aircraft/ui/views/CameraMenuView;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataOrder:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)I
    .locals 0

    .line 89
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->time:I

    return p1
.end method

.method static synthetic access$1302(Lcom/powervision/aircraft/ui/views/CameraMenuView;D)D
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->totalDistance:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->startRecord()V

    return-void
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    return p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/views/CameraMenuView;ILjava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    return p0
.end method

.method static synthetic access$1900(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/CameraMenuView;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->postShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    return p0
.end method

.method static synthetic access$2100(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TAKE_PHOTO:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setCameraParmas(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/CameraMenuView;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentTrailSpeed:F

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/aircraft/ui/views/CameraMenuView;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentTrailSpeed:F

    return p1
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)I
    .locals 0

    .line 89
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/aircraft/ui/views/CameraMenuView;Lcom/powervision/aircraft/lapse/data/LapseTrailData;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataX:[F

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataY:[F

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataZ:[F

    return-object p0
.end method

.method private checkMemoryBeforeDelay()Z
    .locals 9

    .line 706
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSDFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    .line 709
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 710
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_65:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_DV_TimeLapsePhoto_7:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_DV_TimeLapsePhoto_6:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/aircraft/ui/views/CameraMenuView$9;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$9;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    new-instance v8, Lcom/powervision/aircraft/ui/views/CameraMenuView$10;

    invoke-direct {v8, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$10;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    const-string v3, ""

    .line 709
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return v1

    .line 727
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

    .line 728
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    .line 729
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkResolution()V
    .locals 2

    .line 1300
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 1305
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_212:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 1306
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_1

    .line 1302
    :cond_2
    :goto_0
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_212:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 1303
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkSdCardLowSpeed()Z
    .locals 5

    .line 1504
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_69:I

    .line 1510
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v4, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 1511
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1509
    invoke-static {v0, v4, v2, v3, v4}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1512
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkWaterModeDisableRecord()Z
    .locals 5

    .line 1519
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWaterModeTag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1520
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_2

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v1, Lcom/lewis/camera/R$string;->AP03_waterproof_8:I

    .line 1526
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v4, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 1527
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1525
    invoke-static {v0, v4, v1, v3, v4}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1528
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_2
    return v1
.end method

.method private dismissDialog()V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mLSEprogressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mLSEprogressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_1
    return-void
.end method

.method private getNeedShowBrustIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 1477
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1478
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    sget v1, Lcom/lewis/camera/R$mipmap;->aricraft_brust_icon7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private getNeedShowTimeIcon()Landroid/util/SparseIntArray;
    .locals 3

    .line 1490
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1491
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon3:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1492
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon5:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon7:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon10:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1495
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon15:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1496
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon30:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1497
    sget v1, Lcom/lewis/camera/R$mipmap;->time_icon60:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private initCameraSdk()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamSdkInstance:Lcom/powervision/natives/PowerCamSDK;

    return-void
.end method

.method private initCircleView()V
    .locals 5

    .line 204
    sget v0, Lcom/powervision/aircraft/R$id;->circle_menu_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    .line 206
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->aircraft_circle_wb_arrays:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextWBArray:[Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->aircraft_circle_gimbal_angle_arrays:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemGilbalAngleArray:[Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->aircraft_circle_ev_arrays:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextEVArray:[Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->aircraft_circle_iso_arrays:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextISOArray:[Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextWBArray:[Ljava/lang/String;

    sput-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCurrentItemTextArray:[Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    sget-object v1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemGilbalAngleArray:[Ljava/lang/String;

    sget v2, Lcom/powervision/aircraft/R$layout;->aircraft_circle_menu_item:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setMenuItemIconsAndTexts([Ljava/lang/String;IZI)V

    .line 215
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setAlignment(Z)V

    .line 236
    sget v0, Lcom/powervision/aircraft/R$id;->circle_menu_view_more:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    .line 237
    sget-object v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextWBArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleIndex:[Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v0, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCircleData([Ljava/lang/String;I)V

    .line 239
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    new-instance v1, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setOnMenuItemClickListener(Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;)V

    .line 256
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_top_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_center_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    .line 258
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_bottom_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    return-void
.end method

.method private initLiveData()V
    .locals 3

    .line 320
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    const-string v2, "trail_speed"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v2, Lcom/powervision/aircraft/ui/views/CameraMenuView$3;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$3;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 330
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    const-string v2, "trail_data"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v2, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 364
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "trail_time"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v2, Lcom/powervision/aircraft/ui/views/CameraMenuView$5;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$5;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 371
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    const-string v2, "total_distance"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v2, Lcom/powervision/aircraft/ui/views/CameraMenuView$6;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$6;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 188
    sget v0, Lcom/powervision/aircraft/R$id;->photo_record_select:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    .line 189
    sget v0, Lcom/powervision/aircraft/R$id;->camera_image:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    .line 190
    sget v0, Lcom/powervision/aircraft/R$id;->camera_setting:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    .line 191
    sget v0, Lcom/powervision/aircraft/R$id;->media_library:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    .line 192
    sget v0, Lcom/powervision/aircraft/R$id;->toast_value_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastView:Landroid/widget/TextView;

    .line 193
    sget v0, Lcom/powervision/aircraft/R$id;->photo_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    .line 194
    sget v0, Lcom/powervision/aircraft/R$id;->photo_mode_text:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    .line 195
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->initCircleView()V

    .line 196
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->initCameraSdk()V

    return-void
.end method

.method static synthetic lambda$photoAndRecording$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setDelayTime$2(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 683
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private photoAndRecording()V
    .locals 13

    .line 550
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 551
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 552
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 553
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 557
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 558
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 559
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 560
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v0

    const/4 v4, 0x7

    if-gt v0, v4, :cond_2

    .line 561
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 564
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v4, :cond_12

    const-string v0, "camera_check"

    const-string v4, " take photo ..UI."

    .line 565
    invoke-static {v0, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 570
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 581
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v4

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "======i====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "jlkjljlkjlkjlkjlk"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    .line 584
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto/16 :goto_0

    :cond_4
    if-ne v4, v2, :cond_5

    .line 586
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto/16 :goto_0

    :cond_5
    if-ne v4, v3, :cond_7

    .line 588
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting:Z

    if-nez v0, :cond_6

    .line 589
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    .line 591
    :cond_6
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto/16 :goto_0

    :cond_7
    if-ne v4, v1, :cond_9

    .line 593
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting:Z

    if-nez v0, :cond_8

    .line 594
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    .line 596
    :cond_8
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    if-ne v4, v0, :cond_a

    .line 598
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v0

    .line 599
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    const-string v5, "delay_shoot_test"

    const-string v6, "DELAY_SHOOT"

    if-ne v4, v0, :cond_10

    .line 601
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    const-string v4, "UNKNOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====\u70b9\u51fb1===="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photoAndRecording: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentTrailSpeed = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentTrailSpeed:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CameraMenuView"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->checkMemoryBeforeDelay()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 608
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5\u5f00\u59cb\u5ef6\u65f6\u6444\u5f71"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "nemo-delay-info"

    invoke-static {v4, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    const-string v4, "PV_GIM_LSE_FLAG"

    const/4 v5, 0x0

    if-nez v0, :cond_c

    .line 610
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 611
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->showDelayLESLoading()V

    .line 612
    invoke-virtual {p0, v5}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setDelayTime(I)V

    const-string v0, "\u70b9\u51fb\u5f00\u59cb\u81ea\u7531\u5ef6\u65f6\u6444\u5f71"

    .line 613
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    if-ne v0, v2, :cond_13

    .line 615
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    if-ge v0, v3, :cond_d

    .line 616
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    return-void

    :cond_d
    const-string v0, "\u70b9\u51fb\u5f00\u59cb-----> \u8f68\u8ff9\u5ef6\u65f6"

    .line 619
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 620
    iget-wide v8, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->totalDistance:D

    cmpg-double v0, v6, v8

    if-gez v0, :cond_e

    .line 621
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_12:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_e
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_f

    .line 625
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_13:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 628
    :cond_f
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 629
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->showDelayLESLoading()V

    .line 630
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setDelayTime(I)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ff9\u5ef6\u65f6\u6444\u5f71 -- \u901f\u5ea6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentTrailSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \u8ddd\u79bb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->totalDistance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " \u65f6\u95f4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->time:I

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_10
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    const-string v1, "DELAY_FREE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u624b\u52a8\u505c\u6b62\u81ea\u7531\u5ef6\u65f6"

    .line 634
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====\u70b9\u51fb2===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_97:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_98:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$dJGvrRZhW0-fgYMfAeR1WK5YcQ0;

    invoke-direct {v11, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$dJGvrRZhW0-fgYMfAeR1WK5YcQ0;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    sget-object v12, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$ePsV_UbWX2x1vKjZZ4-SlVr1poY;->INSTANCE:Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$ePsV_UbWX2x1vKjZZ4-SlVr1poY;

    invoke-static/range {v6 .. v12}, Lcom/powervision/base/utils/DialogUtils;->returnCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mStopDelayDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 643
    :cond_11
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    const-string v1, "DELAY_TRAJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====\u70b9\u51fb3===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

    if-eqz v0, :cond_13

    .line 646
    invoke-interface {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;->onClick()V

    goto :goto_0

    .line 650
    :cond_12
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->recording()V

    :cond_13
    :goto_0
    return-void
.end method

.method private postShowToast(Ljava/lang/String;)V
    .locals 3

    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mToastRunable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->TOAST_SHOW_TIME:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private recording()V
    .locals 2

    .line 741
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_3

    .line 743
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

    .line 744
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->checkSdCardLowSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->checkWaterModeDisableRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "camera_check"

    const-string v1, " \u5f00\u59cb\u5f55\u50cf ..UI."

    .line 753
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->startRecordVideo()V

    goto :goto_0

    .line 757
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->stopRecordVideo()V

    :goto_0
    return-void
.end method

.method private resetCapture()V
    .locals 2

    .line 1397
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resId:I

    if-eqz v0, :cond_0

    .line 1398
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resId:I

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

    .line 996
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 997
    iput p1, v0, Landroid/os/Message;->what:I

    .line 998
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 999
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setCameraParmas(I)V
    .locals 2

    .line 279
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleParmasType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamSdkInstance:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setWhiteBalance(I)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamSdkInstance:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setISO(I)I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamSdkInstance:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setEV(I)I

    :cond_2
    :goto_0
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 299
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 300
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    .line 301
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 302
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addSubModeTrajDataResultListener(Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;)V

    .line 304
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V

    .line 305
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setNotifyOnReceiveTimeLapsePhotoStatusListener(Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;)V

    .line 306
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 307
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->initLiveData()V

    return-void
.end method

.method private showDelayLESLoading()V
    .locals 4

    .line 661
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mLSEprogressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 662
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mLSEprogressBar:Lcom/powervision/base/views/LoadingProgressBar;

    new-instance v1, Lcom/powervision/aircraft/ui/views/CameraMenuView$7;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$7;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lcom/powervision/base/views/LoadingProgressBar;->show(JLcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V

    return-void
.end method

.method private showDelayLoading(JLcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V
    .locals 2

    .line 1548
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 1549
    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/base/views/LoadingProgressBar;->show(JLcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V

    return-void
.end method

.method private startRecord()V
    .locals 2

    .line 1311
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecordFrom(I)V

    goto :goto_0

    :cond_0
    const-string v0, "\u6536\u58f0\u94fe\u8def\u5df2\u65ad\u5f00"

    .line 1314
    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u5f55\u50cf\u6309\u94ae\u754c\u9762 \u5f00\u59cb\u5f55\u50cf \u4f46\u662f\u94fe\u8def\u65ad\u5f00\u4e86"

    .line 1315
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private switchCameraViews()V
    .locals 2

    .line 527
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_0

    .line 529
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    goto :goto_0

    .line 530
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_2

    .line 533
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget v0, Lcom/lewis/camera/R$string;->AP03_HomePage_21:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    .line 540
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string v1, "DELAY_SHOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf44

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public SetTimeLapsePhotoMaxSpeedResult(I)V
    .locals 8

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====222222222222222======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "======aaa===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataX:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "======bbbbbbbbb====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataYaw:[F

    .line 1066
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "===ccccccc========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=======dddd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataOrder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delay_shoot_test"

    .line 1065
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "\u901f\u5ea6\u8bbe\u7f6e\u8d85\u65f6"

    .line 1092
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    goto/16 :goto_2

    .line 1088
    :cond_1
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    const-string p1, "\u901f\u5ea6\u8bbe\u7f6e\u5931\u8d25"

    .line 1089
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "\u901f\u5ea6\u8bbe\u7f6e\u6210\u529f"

    .line 1070
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v1, "AP03_DELAY_MODE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 1072
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "\u53d1\u9001\u8f68\u8ff9\u62cd\u6444\u6570\u636e"

    .line 1075
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1076
    :goto_0
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    if-ge v2, p1, :cond_4

    .line 1077
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataTime:[F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->time:I

    int-to-float v0, v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1079
    :cond_4
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataX:[F

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataY:[F

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataZ:[F

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataYaw:[F

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataTime:[F

    iget v6, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    iget-boolean v7, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataOrder:Z

    invoke-virtual/range {v0 .. v7}, Lcom/powervision/natives/PVSDK_AP03_API;->sendTrajectoryData([F[F[F[F[FIZ)I

    .line 1081
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 1082
    invoke-virtual {v0}, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto :goto_1

    .line 1084
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u7ec4\u6570\u636e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", order = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataOrder:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", \u603b\u65f6\u957f = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->time:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public cancelTimer()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCapture()V

    return-void
.end method

.method public closeWaterFollow()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf56
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_ENABLE:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public delayMode(Landroid/util/SparseArray;)V
    .locals 1
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

    .line 1365
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    return-void
.end method

.method public executeTimer(I)V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 1388
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 964
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-nez p1, :cond_0

    .line 965
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 966
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    :cond_0
    return-void
.end method

.method public getSubModeTrajDateResult(Ljava/lang/String;)V
    .locals 3

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====3333333333333333======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delay_shoot_test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Success"

    .line 1049
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8f68\u8ff9\u62cd\u6444\u6570\u636e\u53d1\u9001\u6210\u529f"

    .line 1050
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const/16 v0, 0x11

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    .line 1052
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_MODE_TIME_OUT:I

    const-wide/16 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v0, "Failed"

    .line 1053
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u8f68\u8ff9\u62cd\u6444\u6570\u636e\u53d1\u9001\u5931\u8d25"

    .line 1054
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1055
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    goto :goto_0

    :cond_1
    const-string v0, "Timeout"

    .line 1056
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8f68\u8ff9\u62cd\u6444\u6570\u636e\u53d1\u9001\u8d85\u65f6"

    .line 1057
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1142
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1143
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_MENU:I

    if-ne v0, v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->switchCameraMenuStatus()V

    goto/16 :goto_6

    .line 1145
    :cond_0
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_RECORD:I

    const/16 v2, 0xd6

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    const-string p1, "\u5207\u6362\u5f55\u50cf\u6210\u529f"

    .line 1146
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_recording_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1148
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->flight_icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_6

    .line 1152
    :cond_1
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_PHOTO:I

    const-string v4, "photo_switch"

    const/4 v5, 0x0

    const-string v6, "CameraMenuView"

    if-ne v0, v1, :cond_3

    const-string p1, "222"

    .line 1153
    invoke-static {v4, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_photo_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_capture:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    if-nez p1, :cond_2

    .line 1158
    iput v5, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resId:I

    .line 1159
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCapture()V

    .line 1161
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    .line 1162
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_6

    .line 1163
    :cond_3
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_RECORD:I

    const-string v2, "nemo_record_info-air"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v1, :cond_9

    .line 1164
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->flight_icon_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1165
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    if-eqz p1, :cond_4

    if-ne p1, v8, :cond_5

    .line 1167
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_capture:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1169
    :cond_5
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 1170
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p1

    if-ne p1, v8, :cond_8

    .line 1171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-ne v7, p1, :cond_6

    .line 1172
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/aircraft/utils/BluetoothUtil;

    move-result-object p1

    new-instance v0, Lcom/powervision/aircraft/ui/views/CameraMenuView$11;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$11;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->openSco(Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;)V

    goto :goto_0

    .line 1183
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "\u70b9\u51fb\u6309\u94ae \u6b63\u5e38\u5f00\u59cb\u5f55\u50cf \u8d70\u5916\u653e"

    .line 1184
    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->startRecord()V

    .line 1187
    :cond_7
    :goto_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_1

    .line 1190
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BaseApplication;

    .line 1191
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 1193
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->recordStartTime:J

    goto/16 :goto_6

    .line 1194
    :cond_9
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_STOP_RECORD:I

    if-ne v0, v1, :cond_b

    .line 1195
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->flight_icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1196
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_icon_pic_library:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1197
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 1198
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p1

    if-ne p1, v8, :cond_a

    const-string p1, "\u70b9\u51fb\u6309\u94ae \u6b63\u5e38\u505c\u6b62\u5f55\u50cf\u6536\u58f0"

    .line 1199
    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecordFrom(I)V

    .line 1201
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc5

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_2

    .line 1204
    :cond_a
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BaseApplication;

    .line 1205
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 1208
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    .line 1210
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->recordStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    invoke-static {v2}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AP03_D_AI_Normal"

    .line 1209
    invoke-static {v3, v0, v1, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1208
    invoke-static {p1, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 1213
    :cond_b
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TAKE_PHOTO:I

    const-string v2, "CameraManager.getInstance().getMultipleShotsNum() = "

    if-ne v0, v1, :cond_f

    .line 1214
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BaseApplication;

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-static {v6, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_c

    .line 1220
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    goto :goto_3

    :cond_c
    if-ne v0, v8, :cond_d

    .line 1222
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_e

    .line 1223
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    goto :goto_3

    :cond_d
    if-ne v0, v7, :cond_e

    .line 1226
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_e

    .line 1227
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 1230
    :cond_e
    :goto_3
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 1231
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xd5

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_6

    .line 1232
    :cond_f
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    if-ne v0, v1, :cond_10

    .line 1235
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1236
    :cond_10
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_TIME_CAPTURE:I

    if-ne v0, p1, :cond_11

    .line 1237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1239
    :cond_11
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    if-ne v0, p1, :cond_12

    .line 1240
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    .line 1241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1241
    invoke-static {v6, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf46

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_6

    .line 1244
    :cond_12
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    if-ne v0, p1, :cond_13

    .line 1245
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    goto/16 :goto_6

    .line 1246
    :cond_13
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    if-ne v0, p1, :cond_14

    .line 1247
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    goto/16 :goto_6

    .line 1248
    :cond_14
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_PHOTO:I

    if-ne v0, p1, :cond_15

    .line 1249
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto/16 :goto_6

    .line 1250
    :cond_15
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_RECORD:I

    if-ne v0, p1, :cond_16

    .line 1251
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->startRecordVideo()V

    goto/16 :goto_6

    .line 1252
    :cond_16
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTO_ICON:I

    if-ne v0, p1, :cond_17

    .line 1253
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_delay_photo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 1254
    :cond_17
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTOING_ICON:I

    if-ne v0, p1, :cond_18

    .line 1255
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_delay_photoing:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1256
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    goto/16 :goto_6

    .line 1257
    :cond_18
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_DISABLE:I

    if-ne v0, p1, :cond_1b

    .line 1258
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string v0, "DELAY_SHOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string v0, "FOLLOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1260
    :cond_19
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    .line 1261
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-eq p1, v0, :cond_1a

    sget p1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    .line 1267
    :cond_1a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1268
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_camera_setting_unenable:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 1269
    :cond_1b
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_ENABLE:I

    if-ne v0, p1, :cond_1e

    .line 1270
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1271
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    const-string p1, "333"

    .line 1272
    invoke-static {v4, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    .line 1274
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-eq p1, v0, :cond_1d

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne p1, v0, :cond_1c

    goto :goto_4

    .line 1277
    :cond_1c
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_photo_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1275
    :cond_1d
    :goto_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_recording_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1279
    :goto_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCameraSetting:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->icon_camera_setting:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 1280
    :cond_1e
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_MODE_TIME_OUT:I

    if-ne v0, p1, :cond_1f

    .line 1281
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    goto :goto_6

    .line 1282
    :cond_1f
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->TRY_SWITCH_RECORD_TWICE:I

    if-ne v0, p1, :cond_20

    .line 1283
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_21

    .line 1284
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    goto :goto_6

    .line 1286
    :cond_20
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->DISMISS_DIALOG:I

    if-ne v0, p1, :cond_21

    .line 1287
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dismissDialog()V

    .line 1288
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mStopDelayDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1289
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mStopDelayDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_21
    :goto_6
    return-void
.end method

.method public hideCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1331
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1333
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public isShooting()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting:Z

    return v0
.end method

.method public synthetic lambda$onSwitchPhotographMode$5$CameraMenuView()V
    .locals 2

    .line 903
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSwitchPhotographMode$6$CameraMenuView()V
    .locals 2

    .line 913
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSwitchRecordMode$3$CameraMenuView()V
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_69:I

    .line 855
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v3, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 856
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 854
    invoke-static {v0, v3, v1, v2, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 857
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$onSwitchRecordMode$4$CameraMenuView()V
    .locals 4

    .line 869
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v1, Lcom/lewis/camera/R$string;->AP03_waterproof_8:I

    .line 870
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    sget v3, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 871
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 869
    invoke-static {v0, v3, v1, v2, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 872
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$photoAndRecording$0$CameraMenuView(Landroid/view/View;)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

    if-eqz p1, :cond_0

    .line 638
    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public onAEBMultiplePhotoStart()V
    .locals 2

    .line 952
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf51

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 2

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ...getCameraWorkState  \u7ed3\u679c     cameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_MENU:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 388
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 392
    sget v0, Lcom/powervision/aircraft/R$id;->photo_record_select:I

    if-ne p1, v0, :cond_4

    .line 393
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne p1, v0, :cond_1

    const-string p1, "camera_check"

    const-string v0, "  isRecording  ...not click"

    .line 394
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_186:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne p1, v0, :cond_3

    .line 398
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return-void

    .line 401
    :cond_3
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->switchCameraViews()V

    goto/16 :goto_1

    .line 402
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->camera_image:I

    if-ne p1, v0, :cond_5

    .line 403
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->photoAndRecording()V

    goto/16 :goto_1

    .line 404
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->camera_setting:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_8

    .line 405
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 408
    :cond_6
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_1

    :cond_7
    :goto_0
    return-void

    .line 409
    :cond_8
    sget v0, Lcom/powervision/aircraft/R$id;->media_library:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_c

    .line 410
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne p1, v0, :cond_a

    .line 412
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_10

    .line 414
    :cond_9
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    .line 415
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    goto/16 :goto_1

    .line 418
    :cond_a
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_b

    .line 419
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Home_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_b
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting()Z

    move-result p1

    if-nez p1, :cond_10

    .line 424
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->takingPhoto()Z

    move-result p1

    if-nez p1, :cond_10

    .line 425
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto/16 :goto_1

    .line 428
    :cond_c
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_top_tv:I

    if-ne p1, v0, :cond_d

    .line 429
    sget-object p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextEVArray:[Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCircleData([Ljava/lang/String;I)V

    .line 430
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 434
    :cond_d
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_center_tv:I

    if-ne p1, v0, :cond_e

    .line 436
    sget-object p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextWBArray:[Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCircleData([Ljava/lang/String;I)V

    .line 437
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 441
    :cond_e
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_circle_bottom_tv:I

    if-ne p1, v0, :cond_f

    .line 442
    sget-object p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mItemTextISOArray:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetCircleData([Ljava/lang/String;I)V

    .line 443
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 446
    :cond_f
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_text:I

    if-ne p1, v0, :cond_10

    .line 448
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->stopDelayTimePhoto()V

    :cond_10
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1457
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1458
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 1459
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 1460
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 1461
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    .line 1462
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 1463
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeSubModeTrajDataResultListener(Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;)V

    .line 1464
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V

    .line 1465
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setNotifyOnReceiveTimeLapsePhotoStatusListener(Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;)V

    .line 1466
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    return-void
.end method

.method public onHDRMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onMultipleShotsStart()V
    .locals 2

    .line 946
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf51

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_TAKE_PHOTO:I

    const-string v1, "\u62cd\u7167\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 933
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPhotograph   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveTimeLapsePhotoStatus(II)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "\u76f8\u673a\u5207\u6362\u6210\u529f"

    .line 1101
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u76f8\u673a\u5207\u6362\u5931\u8d25"

    .line 1103
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1104
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76f8\u673a\u5207\u6362\u8d85\u65f6 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 977
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_RECORD:I

    const-string v1, "\u5f00\u59cb\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u5f00\u59cb\u5f55\u50cf\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 982
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStartRecordVideo   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 987
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_STOP_RECORD:I

    const-string v1, "\u505c\u6b62\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u505c\u6b62\u5f55\u50cf\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 992
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStopRecordVideo   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStorageFull(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 4

    const-string v0, "0"

    .line 894
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 895
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_PHOTO:I

    const-string v1, "\u5207\u6362\u62cd\u7167\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 896
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalRemoteTag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 897
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 898
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 899
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 902
    new-instance v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$pcAoLSAywxA2jdegH7gvh0hpW0Q;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$pcAoLSAywxA2jdegH7gvh0hpW0Q;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 906
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_4

    .line 907
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 908
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 909
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_4

    .line 910
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 912
    new-instance v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$WHqoP0bv0A5YgeBn8qVAtOcj1NM;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$WHqoP0bv0A5YgeBn8qVAtOcj1NM;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_PHOTO:I

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 920
    :cond_5
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u5207\u6362\u62cd\u7167\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 922
    :cond_6
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalRemoteTag(I)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSwitchPhotographMode   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 4

    const-string v0, "0"

    .line 840
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 841
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SWITCH_RECORD:I

    const-string v2, "\u5207\u6362\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v2, "MPC_AVOI_ON"

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    .line 844
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    .line 845
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalRemoteTag()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 847
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 853
    new-instance v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$xp6TjKw6A-51ykCnyeRy_ETjv2k;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$xp6TjKw6A-51ykCnyeRy_ETjv2k;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 861
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWaterModeTag()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 862
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_4

    .line 864
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 867
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 868
    new-instance v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$JXLJTtZYlXgWuECfjyD-cE-sVvc;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$JXLJTtZYlXgWuECfjyD-cE-sVvc;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_POST_RECORD:I

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 880
    :cond_5
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5207\u6362\u5f55\u50cf\u5931\u8d25 type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    const-string v0, "0x801"

    .line 881
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 882
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_SHOW_TOAST:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5207\u6362\u5f55\u50cf\u91cd\u8bd5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 883
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->tryNum:I

    .line 884
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->TRY_SWITCH_RECORD_TWICE:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    :cond_6
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalRemoteTag(I)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSwitchRecordMode   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_check"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimingStart()V
    .locals 2

    const-string v0, "onTimingStart --------------->"

    .line 938
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/utils/RxCountDown;->countdown(I)V

    .line 940
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->ACTION_CODE_START_TIME_CAPTURE:I

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->sendMsg(ILjava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf51

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 2

    .line 1111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1112
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    const-string v1, "avoid_follow_open_check_resolution"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public openWaterFollow()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf55
    .end annotation

    .line 1567
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_DISABLE:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resetCircleData([Ljava/lang/String;I)V
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_circle_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setMenuItemIconsAndTexts([Ljava/lang/String;IZI)V

    .line 796
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleIndex:[Ljava/lang/String;

    return-void
.end method

.method public resetLapseTakingIcon()V
    .locals 2

    .line 1539
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTO_ICON:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setBarrierStatus(I)V
    .locals 0

    return-void
.end method

.method public setCurrentDealyMode(I)V
    .locals 0

    .line 1369
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentDealyMode:I

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====4444444444444======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====sub==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    .line 1020
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\u5f53\u524d\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5b50\u6a21\u5f0f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nemo-delay-info"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string p2, "DELAY_SHOOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "DELAY_TRAJ"

    const-string v1, "UNKNOWN"

    const-string v2, "DELAY_FREE"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1023
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTOING_ICON:I

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1024
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1025
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTO_ICON:I

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1026
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1027
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_DELAY_PHOTOING_ICON:I

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    .line 1029
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1031
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1032
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_ENABLE:I

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1030
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_DISABLE:I

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    .line 1036
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string p2, "RTL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string p2, "FAST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string p2, "TRIPLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string p2, "POSCTL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1037
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1038
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1040
    :cond_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->SET_SWITCH_BTN_ENABLE:I

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    .line 1041
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->menuHandler:Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->DISMISS_DIALOG:I

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView$CameraMenuViewHandler;->sendEmptyMessage(I)Z

    :cond_8
    return-void
.end method

.method public setDelayTime(I)V
    .locals 9

    .line 681
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v8}, Lio/reactivex/Flowable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;->INSTANCE:Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;

    .line 683
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 684
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 685
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;-><init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)V

    .line 686
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setEV(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGimbalCircle(I)V
    .locals 1

    add-int/lit8 p1, p1, 0x5a

    .line 765
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->doAutoScrollTo(I)V

    return-void
.end method

.method public setISO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOnStopLapseClickListener(Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

    return-void
.end method

.method public setPhotoModeIcon(I)V
    .locals 1

    .line 815
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resId:I

    if-eqz p1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setShooting(Z)V
    .locals 1

    .line 266
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting:Z

    .line 267
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setTakingPhoto(Z)V

    return-void
.end method

.method public setWB(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showTimer(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb3
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

    .line 1344
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

    const-string v2, "CameraMenuView"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1345
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    return-void

    .line 1349
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    return-void

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchCameraMenuStatus()V
    .locals 3

    .line 458
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 459
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->currentMode:Ljava/lang/String;

    const-string v1, "FOLLOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_recording_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->flight_icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoModeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_icon_pic_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 467
    :cond_1
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_4

    .line 468
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_recording_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->flight_icon_recording:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_icon_pic_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 472
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 477
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 480
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 482
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->icon_delay_photoing:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 484
    :cond_6
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCamera:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo_switch"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mPhotoRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_photo_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_icon_pic_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->cancelTimer()V

    :goto_2
    return-void
.end method

.method public switchCircleMode()V
    .locals 3

    .line 769
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->doubleCircleMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 772
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mMediaLibrary:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 779
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->mCircleDoubleLayout:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleTop:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->circleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->doubleCircleMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView;->doubleCircleMode:Z

    return-void
.end method

.method public updatePhotoIcon()V
    .locals 2

    .line 507
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 508
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v0

    .line 512
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getNeedShowBrustIcon()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setPhotoModeIcon(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 514
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v0

    .line 515
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getNeedShowBrustIcon()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setPhotoModeIcon(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 517
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v0

    .line 518
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getNeedShowTimeIcon()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setPhotoModeIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method
