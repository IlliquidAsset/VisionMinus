.class public Lcn/powervision/flightlog/activity/FlightLogDetialActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FlightLogDetialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;
.implements Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final TAG_REQUEST_MEDIA_PROJECTION:I = 0x3e8

.field private static final TAG_REQUEST_SDCARD_PERMISSION:I = 0x7d0

.field private static final Tag:Ljava/lang/String; = "FlightLogDetialActivity"


# instance fields
.field private final TYPE_FULL_INFO_MODE:I

.field private final TYPE_VIDEO_INFO_MODE:I

.field private argb:I

.field private indexFileList:I

.field private indexPagerList:I

.field private instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

.field isCanDragSeekBar:Z

.field private isPlaying:Z

.field isRecording:Z

.field logDatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloseBt:Landroid/widget/ImageView;

.field private mCurrentDataIndex:I

.field private mCustomBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

.field private mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

.field private mFlightLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation
.end field

.field private mFlightLogTrackInfoView:Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;

.field private mFlyDeviceBatteryIv:Landroid/widget/ImageView;

.field private mFlyDeviceBatteryTv:Landroid/widget/TextView;

.field private mFlyModeTv:Landroid/widget/TextView;

.field private mGimbalView:Lcn/powervision/flightlog/customViews/GimbalValueView;

.field private final mHandler:Landroid/os/Handler;

.field private mLayerPopuWindow:Landroid/widget/PopupWindow;

.field private mMapSwitchMode:Landroid/widget/ImageView;

.field private mMapView:Lcom/powervision/airmap/mapview/AirMapView;

.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mPlaySpeed:I

.field private mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

.field private mRemoteBatteryTv:Landroid/widget/TextView;

.field private mRemoteControlSignalIv:Landroid/widget/ImageView;

.field private mSateLliteLayer:Landroid/widget/ImageView;

.field private mSatellitesNumTv:Landroid/widget/TextView;

.field private mStandardLayer:Landroid/widget/ImageView;

.field private mTopBarLayout:Landroid/widget/LinearLayout;

.field private mTopFlyInfoLayout:Landroid/widget/LinearLayout;

.field private mViewMode:I

.field private mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 65
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 89
    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;-><init>(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    const/4 v1, 0x1

    .line 99
    iput v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mPlaySpeed:I

    const/4 v2, -0x1

    .line 102
    iput v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexFileList:I

    .line 103
    iput v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexPagerList:I

    .line 106
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mViewMode:I

    .line 107
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->TYPE_FULL_INFO_MODE:I

    .line 108
    iput v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->TYPE_VIDEO_INFO_MODE:I

    const/16 v2, 0xff

    const/16 v3, 0x3a

    const/16 v4, 0x75

    const/16 v5, 0xf2

    .line 109
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->argb:I

    .line 112
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    .line 394
    iput-boolean v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isCanDragSeekBar:Z

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mStandardLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Lcom/powervision/map/manager/MapSwitchManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViewsWapper()V

    return-void
.end method

.method private cancelRecorder()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopRecorder()V

    return-void
.end method

.method private chang2RecordingMode()V
    .locals 2

    const/4 v0, 0x1

    .line 540
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->changViewsMode(I)V

    .line 541
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopPlayAndResetViews()V

    const/16 v0, 0x8

    .line 542
    invoke-direct {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->setSpeedValue(I)V

    .line 543
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    .line 544
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startRecording()V

    return-void
.end method

.method private excuteChangeData(Z)V
    .locals 3

    .line 695
    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexFileList:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 701
    :goto_0
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->logDatalist:Ljava/util/List;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->hasNextData(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 702
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->logDatalist:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getDetialListData(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 705
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopPlayAndResetViews()V

    .line 706
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexFileList:I

    .line 708
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setSeekBarMaxValue(I)V

    .line 711
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method private getFlyMode(I)Ljava/lang/String;
    .locals 2

    .line 740
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$array;->fly_mode_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 741
    array-length v1, v0

    if-lt v1, p1, :cond_0

    .line 742
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private hasPermissionToWriteExStorage()Z
    .locals 3

    .line 924
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initDetialData()V
    .locals 3

    .line 757
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_pos"

    const/4 v2, 0x0

    .line 758
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexFileList:I

    const-string v1, "pager_pos"

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexPagerList:I

    .line 761
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    .line 762
    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexPagerList:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getPagerIndexData(I)Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->finish()V

    return-void

    .line 767
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->logDatalist:Ljava/util/List;

    if-nez v0, :cond_1

    .line 769
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->finish()V

    return-void

    .line 772
    :cond_1
    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->indexFileList:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 774
    invoke-direct {p0, v0, v2}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method private initDetialLayout(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    sget v0, Lcn/powervision/flightlog/R$id;->battery_progress:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/CustomBatteryProgressView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCustomBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    .line 139
    sget v0, Lcn/powervision/flightlog/R$id;->flightlog_flightloginfoview:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    .line 140
    sget v0, Lcn/powervision/flightlog/R$id;->gimbal_view:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/customViews/GimbalValueView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mGimbalView:Lcn/powervision/flightlog/customViews/GimbalValueView;

    .line 141
    sget v0, Lcn/powervision/flightlog/R$id;->side_bar_map_switch_mode:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapSwitchMode:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcn/powervision/flightlog/R$id;->flight_close_bt:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCloseBt:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcn/powervision/flightlog/R$id;->detial_map:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/airmap/mapview/AirMapView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    .line 144
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->initMap(Landroid/os/Bundle;)V

    return-void
.end method

.method private initMap(Landroid/os/Bundle;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/powervision/map/manager/MapSwitchManager;-><init>(Landroid/content/Context;Lcom/powervision/airmap/mapview/AirMapView;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    .line 150
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {p1, p0}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapShotListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;)V

    .line 151
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {p1, p0}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapLoadListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;)V

    return-void
.end method

.method private initTopBarViews()V
    .locals 1

    .line 155
    sget v0, Lcn/powervision/flightlog/R$id;->detial_top_fly_info_layut:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mTopFlyInfoLayout:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Lcn/powervision/flightlog/R$id;->flight_mode:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyModeTv:Landroid/widget/TextView;

    .line 157
    sget v0, Lcn/powervision/flightlog/R$id;->flight_satellites_num:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSatellitesNumTv:Landroid/widget/TextView;

    .line 158
    sget v0, Lcn/powervision/flightlog/R$id;->flight_remote_control_signal:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRemoteControlSignalIv:Landroid/widget/ImageView;

    .line 159
    sget v0, Lcn/powervision/flightlog/R$id;->flight_device_battery:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyDeviceBatteryTv:Landroid/widget/TextView;

    .line 160
    sget v0, Lcn/powervision/flightlog/R$id;->flight_device_battery_icon:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyDeviceBatteryIv:Landroid/widget/ImageView;

    .line 161
    sget v0, Lcn/powervision/flightlog/R$id;->flight_remote_control_battery:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRemoteBatteryTv:Landroid/widget/TextView;

    return-void
.end method

.method private initTrackInfoViews()V
    .locals 1

    .line 165
    sget v0, Lcn/powervision/flightlog/R$id;->flightlog_flightLogTrackInfoView:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogTrackInfoView:Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;

    return-void
.end method

.method private moveToDeviceLocation()V
    .locals 7

    .line 463
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    if-le v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FlightLogData;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v3

    .line 467
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v5

    .line 466
    invoke-virtual/range {v1 .. v6}, Lcom/powervision/airmap/mapview/AirMapView;->moveTargetLocation(IDD)V

    :cond_0
    return-void
.end method

.method private onDataPlayedOver()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    invoke-virtual {v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->onPlayOver()V

    return-void
.end method

.method private onDataRecordingOver()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-virtual {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->getSavedPath()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopRecorder()V

    .line 518
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/powervision/flightlog/R$string;->App_MediaLib_149:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    invoke-virtual {p0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopService(Landroid/content/Intent;)Z

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    invoke-virtual {p0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->finish()V

    return-void
.end method

.method private reloadFlightLogtViews(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;I)V"
        }
    .end annotation

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "list  end !!!  "

    const-string v4, "FlightLogDetialActivity"

    if-eqz p1, :cond_3

    .line 474
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p2, :cond_3

    .line 475
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/flightlog/FlightLogData;

    const/4 v6, 0x1

    .line 476
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/powervision/base/model/flightlog/FlightLogData;

    if-eqz v5, :cond_2

    .line 478
    iget v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mViewMode:I

    if-nez v2, :cond_0

    .line 479
    invoke-direct {p0, v5}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadTopBarInfo(Lcom/powervision/base/model/flightlog/FlightLogData;)V

    .line 480
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    invoke-virtual {v2, v5, p2, v7}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->reloadContentViews(Lcom/powervision/base/model/flightlog/FlightLogData;ILcom/powervision/base/model/flightlog/FlightLogData;)V

    .line 481
    invoke-direct {p0, p1, v5, p2}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadMapViews(Ljava/util/List;Lcom/powervision/base/model/flightlog/FlightLogData;I)V

    .line 482
    invoke-direct {p0, v5}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadGimbalValueView(Lcom/powervision/base/model/flightlog/FlightLogData;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0, p1, v5, p2}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadMapViews(Ljava/util/List;Lcom/powervision/base/model/flightlog/FlightLogData;I)V

    .line 485
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogTrackInfoView:Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v2, v3, p2}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->reloadInfoViews(Lcom/powervision/base/model/flightlog/FlightLogData;I)V

    .line 487
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 490
    iget p2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    add-int/2addr p2, v6

    iput p2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    const/16 p2, 0x1f4

    .line 491
    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mPlaySpeed:I

    div-int/2addr p2, v0

    int-to-long v0, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    .line 492
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 493
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 495
    iget p2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    if-ne p2, p1, :cond_4

    .line 496
    iget p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mViewMode:I

    if-ne p1, v6, :cond_1

    .line 497
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->onDataRecordingOver()V

    goto :goto_1

    .line 499
    :cond_1
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->onDataPlayedOver()V

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iput v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    goto :goto_1

    .line 507
    :cond_3
    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iput v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    :cond_4
    :goto_1
    return-void
.end method

.method private reloadFlightLogtViewsWapper()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- handleMessage...Postion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mPlaySpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlightLogDetialActivity"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 447
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    invoke-direct {p0, v0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method private reloadGimbalValueView(Lcom/powervision/base/model/flightlog/FlightLogData;)V
    .locals 1

    .line 686
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getGimbalPitchAngle()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    neg-float p1, p1

    :cond_0
    float-to-int p1, p1

    .line 691
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mGimbalView:Lcn/powervision/flightlog/customViews/GimbalValueView;

    invoke-virtual {v0, p1}, Lcn/powervision/flightlog/customViews/GimbalValueView;->setValue(I)V

    return-void
.end method

.method private reloadMapViews(Ljava/util/List;Lcom/powervision/base/model/flightlog/FlightLogData;I)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-nez v1, :cond_4

    .line 651
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 654
    :cond_0
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getUserMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getUserMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 658
    :cond_1
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getLogPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 659
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getLogPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 661
    :cond_2
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getmHomeMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 662
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v2}, Lcom/powervision/airmap/mapview/AirMapView;->getmHomeMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 666
    :cond_3
    iget-object v3, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v4

    .line 667
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftOrientation()F

    move-result v9

    .line 666
    invoke-virtual/range {v3 .. v9}, Lcom/powervision/airmap/mapview/AirMapView;->addUserOrDeviceMarkerLocation(DDIF)V

    .line 669
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getReturnPointLatitude()D

    move-result-wide v3

    .line 670
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getReturnPointLongitude()D

    move-result-wide v5

    .line 669
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/powervision/airmap/mapview/AirMapView;->addHomeMarkLocation(DD)V

    .line 672
    iget-object v7, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getUserLatitude()D

    move-result-wide v8

    .line 673
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getUserLongitude()D

    move-result-wide v10

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 672
    invoke-virtual/range {v7 .. v13}, Lcom/powervision/airmap/mapview/AirMapView;->addUserOrDeviceMarkerLocation(DDIF)V

    .line 675
    iget-object v14, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v16

    .line 676
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v18

    .line 675
    invoke-virtual/range {v14 .. v19}, Lcom/powervision/airmap/mapview/AirMapView;->moveTargetLocation(IDD)V

    .line 678
    :cond_4
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftOrientation()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v23

    .line 679
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getUserLatitude()D

    move-result-wide v27

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getUserLongitude()D

    move-result-wide v29

    .line 680
    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getReturnPointLatitude()D

    move-result-wide v31

    invoke-virtual/range {p2 .. p2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getReturnPointLongitude()D

    move-result-wide v33

    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    .line 678
    invoke-virtual/range {v20 .. v34}, Lcom/powervision/airmap/mapview/AirMapView;->updateLogMarker(DDDDDDD)V

    .line 682
    iget-object v2, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    iget v3, v0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->argb:I

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v1, v3}, Lcom/powervision/airmap/mapview/AirMapView;->drawMapLines(Ljava/util/List;II)V

    return-void
.end method

.method private reloadTopBarInfo(Lcom/powervision/base/model/flightlog/FlightLogData;)V
    .locals 8

    .line 576
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFlyMode()I

    move-result v0

    .line 577
    invoke-direct {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getFlyMode(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyModeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getSatellitesNumbers()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSatellitesNumTv:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFlyControlerElectricity()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 602
    sget v5, Lcn/powervision/flightlog/R$mipmap;->aircraft_remote_battery_100:I

    goto :goto_0

    :cond_0
    cmpl-float v5, v0, v3

    if-lez v5, :cond_1

    .line 604
    sget v5, Lcn/powervision/flightlog/R$mipmap;->aircraft_remote_battery_80:I

    goto :goto_0

    :cond_1
    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    .line 606
    sget v5, Lcn/powervision/flightlog/R$mipmap;->aircraft_remote_battery_60:I

    goto :goto_0

    :cond_2
    cmpl-float v5, v0, v1

    if-lez v5, :cond_3

    .line 608
    sget v5, Lcn/powervision/flightlog/R$mipmap;->aircraft_remote_battery_40:I

    goto :goto_0

    .line 610
    :cond_3
    sget v5, Lcn/powervision/flightlog/R$mipmap;->aircraft_remote_battery_20:I

    :goto_0
    float-to-int v0, v0

    .line 613
    iget-object v6, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRemoteBatteryTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v6, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRemoteBatteryTv:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 617
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getTotalElectricity()I

    move-result v5

    .line 618
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getLastFlyElectricity()I

    move-result p1

    const/4 v6, 0x0

    if-lez v5, :cond_4

    mul-int/lit8 v6, p1, 0x64

    .line 621
    div-int/2addr v6, v5

    int-to-float v6, v6

    :cond_4
    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    .line 626
    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_device_battery_100:I

    goto :goto_1

    :cond_5
    cmpl-float v3, v6, v3

    if-lez v3, :cond_6

    .line 628
    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_device_battery_80:I

    goto :goto_1

    :cond_6
    cmpl-float v2, v6, v2

    if-lez v2, :cond_7

    .line 630
    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_device_battery_60:I

    goto :goto_1

    :cond_7
    cmpl-float v1, v6, v1

    if-lez v1, :cond_8

    .line 632
    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_device_battery_40:I

    goto :goto_1

    .line 634
    :cond_8
    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_device_battery_20:I

    :goto_1
    float-to-int v2, v6

    .line 636
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyDeviceBatteryTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlyDeviceBatteryIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " totalElectricity ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  aircraftRemainingElectricity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flight_lot"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-double v0, p1

    int-to-double v2, v5

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double v4, v4, v2

    sub-double/2addr v0, v4

    double-to-int p1, v0

    int-to-double v0, p1

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 646
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCustomBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomBatteryProgressView;->setBatteryProgress(F)V

    return-void
.end method

.method private requestPermissionToWriteExStorage()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 918
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private resetModeView()V
    .locals 2

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->changViewsMode(I)V

    .line 549
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopPlayAndResetViews()V

    .line 550
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    .line 551
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 552
    iput v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mPlaySpeed:I

    .line 553
    invoke-virtual {v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setDefaultPlaySpeed()V

    :cond_0
    return-void
.end method

.method private setDetialListeners()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapSwitchMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p0}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapLoadListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;)V

    .line 752
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->setSeekBarListener()V

    return-void
.end method

.method private setSeekBarListener()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    invoke-virtual {v0, p0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setIContentClickListener(Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;)V

    .line 258
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setSeekBarListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;I)V

    :cond_0
    return-void
.end method

.method private setSeekBarProgress(I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    invoke-virtual {v0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setSeekBarProgress(I)V

    return-void
.end method

.method private setSpeedValue(I)V
    .locals 0

    .line 388
    iput p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mPlaySpeed:I

    return-void
.end method

.method private showLeftMapView()V
    .locals 4

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$layout;->aircraft_find_popup_switch_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 293
    sget v1, Lcn/powervision/flightlog/R$id;->gaode_layer_standard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mStandardLayer:Landroid/widget/ImageView;

    .line 294
    sget v1, Lcn/powervision/flightlog/R$id;->gaode_layer_satellite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    .line 296
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v1}, Lcom/powervision/map/manager/MapSwitchManager;->isMapTypeNormal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/flightlog/R$mipmap;->aircraft_satellite_map_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mStandardLayer:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/flightlog/R$mipmap;->aircraft_normal_map_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/flightlog/R$mipmap;->aircraft_satellite_map_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mStandardLayer:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/flightlog/R$mipmap;->aircraft_normal_map_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    :goto_0
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    new-instance v2, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$1;

    invoke-direct {v2, p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$1;-><init>(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mStandardLayer:Landroid/widget/ImageView;

    new-instance v2, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;

    invoke-direct {v2, p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;-><init>(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    .line 324
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapSwitchMode:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method private showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V
    .locals 7

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 330
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 331
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 334
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 335
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 337
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 338
    aget v5, v4, v1

    sub-int/2addr v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->dipToPx(F)I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz p4, :cond_0

    .line 340
    aget p4, v4, v1

    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v5, p4, v2

    .line 342
    :cond_0
    aget p4, v4, v0

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    add-int/2addr p4, v0

    div-int/2addr p2, v3

    sub-int/2addr p4, p2

    .line 342
    invoke-virtual {p3, p1, v1, v5, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private startCaptureIntent()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 913
    invoke-virtual {p0, v0, v1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startPlayFlightLog(Z)V
    .locals 3

    .line 452
    iput-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 453
    iget p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 454
    iput p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    .line 456
    :cond_0
    iget-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    if-eqz p1, :cond_1

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mCurrentDataIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " list.size()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_change_"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private startRecorder()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    invoke-virtual {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->start()V

    return-void
.end method

.method private startRecording()V
    .locals 2

    .line 855
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->hasPermissionToWriteExStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startCaptureIntent()V

    goto :goto_0

    .line 857
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 858
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->requestPermissionToWriteExStorage()V

    goto :goto_0

    :cond_1
    const-string v0, "FlightLogDetialActivity"

    const-string v1, "No permission to write sd card"

    .line 860
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stopPlayAndResetViews()V
    .locals 1

    const/4 v0, 0x0

    .line 717
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    .line 718
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    .line 719
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    .line 720
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->resetDatas()V

    .line 724
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 727
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getUserMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getUserMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 731
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getLogPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getLogPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 734
    :cond_3
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getmHomeMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 735
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->getmHomeMarkerLog()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_4
    return-void
.end method

.method private stopRecorder()V
    .locals 1

    .line 878
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->quit()V

    :cond_0
    const/4 v0, 0x0

    .line 881
    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    return-void
.end method

.method private toShareActivity()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->setCurrentFlightlogFileData(Ljava/util/List;)V

    .line 786
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/powervision/flightlog/activity/FlightlogShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    const-string v2, "list_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public changViewsMode(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 564
    :goto_0
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setVisibility(I)V

    .line 565
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCustomBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/powervision/base/views/CustomBatteryProgressView;->setVisibility(I)V

    .line 566
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mGimbalView:Lcn/powervision/flightlog/customViews/GimbalValueView;

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Lcn/powervision/flightlog/customViews/GimbalValueView;->setVisibility(I)V

    .line 567
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mTopFlyInfoLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v4, 0x4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapSwitchMode:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCloseBt:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    const/4 v4, 0x4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogTrackInfoView:Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    const/4 v1, 0x4

    :goto_7
    invoke-virtual {v2, v1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->setVisibility(I)V

    .line 572
    iput p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mViewMode:I

    return-void
.end method

.method public dipToPx(F)I
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 347
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getFileSaveDirectory()Ljava/lang/String;
    .locals 4

    .line 885
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 886
    invoke-static {p0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 887
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 889
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 116
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_activity_detial_layout:I

    return v0
.end method

.method public getMediaProject()Landroid/media/projection/MediaProjectionManager;
    .locals 1

    .line 801
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->initTopBarViews()V

    .line 122
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->initDetialLayout(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->initTrackInfoViews()V

    .line 124
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 809
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    .line 811
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 814
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->resetModeView()V

    return-void

    .line 817
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/powervision/flightlog/RecordingScreenService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "code"

    .line 818
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "data"

    .line 819
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 823
    :cond_1
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    .line 824
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    if-nez p1, :cond_2

    .line 827
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->resetModeView()V

    return-void

    :cond_2
    const-string p2, "record_tag"

    const-string p3, "  ==================startPlay  ..."

    .line 830
    invoke-static {p2, p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 833
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getFileSaveDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p1, p3}, Lcn/powervision/flightlog/ScreenRecorderManager;-><init>(Landroid/media/MediaCodecInfo$CodecProfileLevel;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    .line 835
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->hasPermissionToWriteExStorage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 836
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startRecorder()V

    const/4 p1, 0x1

    .line 838
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startPlayFlightLog(Z)V

    .line 839
    iput-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 841
    iput-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    .line 842
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->cancelRecorder()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 281
    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mViewMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 282
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    if-nez v0, :cond_1

    .line 285
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onChangeDataClick(Z)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->excuteChangeData(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 272
    sget v0, Lcn/powervision/flightlog/R$id;->side_bar_map_switch_mode:I

    if-ne p1, v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->showLeftMapView()V

    goto :goto_0

    .line 274
    :cond_0
    sget v0, Lcn/powervision/flightlog/R$id;->flight_close_bt:I

    if-ne p1, v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickLocation()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->moveToDeviceLocation()V

    return-void
.end method

.method public onClickPlay(Z)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startPlayFlightLog(Z)V

    return-void
.end method

.method public onClickShare()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    .line 378
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogInfoView:Lcn/powervision/flightlog/logicViews/FlightLogInfoView;

    invoke-virtual {v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setStopPlayIcon()V

    .line 379
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, v0}, Lcom/powervision/airmap/mapview/AirMapView;->getMapScreenShot(Ljava/lang/Object;)V

    return-void
.end method

.method public onClickSpeed(I)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->setSpeedValue(I)V

    return-void
.end method

.method public onClickshowHideControler(Z)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapShotListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;)V

    .line 203
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, v1}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapLoadListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onDestroy()V

    .line 206
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopRecorder()V

    .line 208
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/powervision/flightlog/RecordingScreenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->stopService(Landroid/content/Intent;)Z

    .line 212
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onHideNormalViews()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x24
    .end annotation

    .line 249
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->chang2RecordingMode()V

    return-void
.end method

.method public onMapLoad()V
    .locals 0

    .line 794
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->initDetialData()V

    .line 795
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->setDetialListeners()V

    .line 797
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->moveToDeviceLocation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 196
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 401
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 402
    iput p2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    .line 403
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    .line 405
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->onDataPlayedOver()V

    .line 407
    :cond_0
    iget-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isPlaying:Z

    if-nez p1, :cond_1

    .line 408
    iget-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isCanDragSeekBar:Z

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mFlightLogList:Ljava/util/List;

    iget p2, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mCurrentDataIndex:I

    invoke-direct {p0, p1, p2}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->reloadFlightLogtViews(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_1

    .line 903
    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 904
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startCaptureIntent()V

    goto :goto_0

    .line 906
    :cond_0
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->resetModeView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenShot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 780
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->setCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 781
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->toShareActivity()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    return-void
.end method

.method public updateStorageCameraView()V
    .locals 7
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf38
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 221
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->resetModeView()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 231
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getFileSaveDirectory()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v3, Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v0, v2}, Lcn/powervision/flightlog/ScreenRecorderManager;-><init>(Landroid/media/MediaCodecInfo$CodecProfileLevel;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V

    iput-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->mRecorder:Lcn/powervision/flightlog/ScreenRecorderManager;

    .line 233
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->hasPermissionToWriteExStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startRecorder()V

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->startPlayFlightLog(Z)V

    .line 237
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->isRecording:Z

    .line 240
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->cancelRecorder()V

    :goto_0
    return-void
.end method
