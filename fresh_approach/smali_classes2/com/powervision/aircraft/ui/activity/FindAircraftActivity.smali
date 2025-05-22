.class public Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FindAircraftActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;
.implements Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03SatellitesListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;
.implements Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;


# instance fields
.field private Tag:Ljava/lang/String;

.field private mBackBt:Landroid/widget/ImageView;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryTv:Landroid/widget/TextView;

.field private mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDeviceLat:D

.field private mDeviceLng:D

.field private mDeviceLocation:Landroid/widget/ImageView;

.field private mInfoClose:Landroid/widget/ImageView;

.field private mInfoPopupWindow:Landroid/widget/PopupWindow;

.field private mLayerPopuWindow:Landroid/widget/PopupWindow;

.field private mLightingOpen:Z

.field private mLocationPopupWindow:Landroid/widget/PopupWindow;

.field private mLocationTv:Landroid/widget/TextView;

.field private mLocationType:I

.field private mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

.field private mMapSideBarView:Lcom/powervision/aircraft/ui/views/MapSideBarView;

.field private mMapView:Lcom/powervision/airmap/mapview/AirMapView;

.field private mOtherMaps:Landroid/widget/TextView;

.field private mSateLliteLayer:Landroid/widget/ImageView;

.field private mSatelliteCoundtTv:Landroid/widget/TextView;

.field private mStandardLayer:Landroid/widget/ImageView;

.field private mUserLocation:Landroid/widget/ImageView;

.field private mWarringLightingBt:Landroid/widget/TextView;

.field private mWifiIcon:Landroid/widget/ImageView;

.field private mfixButton:Landroid/widget/ToggleButton;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationType:I

    const-string v1, "FindAircraftActivity"

    .line 78
    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    .line 436
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mStandardLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Lcom/powervision/map/manager/MapSwitchManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;IDD)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->onLocationItemClicked(IDD)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    return p0
.end method

.method private goBaiduMap()V
    .locals 5

    .line 444
    invoke-static {}, Lcom/powervision/aircraft/utils/MapUtil;->isBaiduMapInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 446
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent://map/direction?destination=latlng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src=#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "map_test"

    const-string v1, "   error .... isBaiduMapInstalled"

    .line 450
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private goGaodeMap()V
    .locals 5

    .line 456
    invoke-static {}, Lcom/powervision/aircraft/utils/MapUtil;->isGdMapInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 459
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidamap://navi?sourceApplication=&poiname=&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&dev=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 462
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    const-string v1, "map_test"

    const-string v2, "   error .... isGdMapInstalled"

    .line 463
    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->goBaiduMap()V

    :goto_1
    return-void
.end method

.method private goGoogleMap()V
    .locals 7

    .line 472
    invoke-static {}, Lcom/powervision/aircraft/utils/MapUtil;->isGoogleMapInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_0

    .line 473
    invoke-static {p0, v0, v1, v4, v5}, Lcom/powervision/aircraft/utils/MapUtil;->openGoogleNavi(Landroid/content/Context;DD)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->goGaodeMap()V

    :goto_0
    return-void
.end method

.method private initMap(Landroid/os/Bundle;)V
    .locals 4

    .line 110
    sget v0, Lcom/powervision/aircraft/R$id;->map_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/airmap/mapview/AirMapView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    .line 111
    new-instance v0, Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/powervision/map/manager/MapSwitchManager;-><init>(Landroid/content/Context;Lcom/powervision/airmap/mapview/AirMapView;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    .line 112
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {p1, p0}, Lcom/powervision/airmap/mapview/AirMapView;->setOnMapLoadListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;)V

    return-void
.end method

.method private initMapMarket()V
    .locals 11

    .line 181
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 182
    iget-object v5, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_SearchPlane_17:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    iget-wide v9, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    invoke-virtual/range {v5 .. v10}, Lcom/powervision/airmap/mapview/AirMapView;->drawFindAircraftMarker(Ljava/lang/String;DD)V

    :cond_0
    return-void
.end method

.method private initSDKs()V
    .locals 1

    .line 129
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 130
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 132
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setSatellitesListener(Lcom/powervision/sdk/callback/Ap03SatellitesListener;)V

    .line 133
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    return-void
.end method

.method private onLocationItemClicked(IDD)V
    .locals 7

    .line 349
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 350
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationType:I

    .line 351
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapView:Lcom/powervision/airmap/mapview/AirMapView;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/powervision/airmap/mapview/AirMapView;->moveTargetLocation(IDD)V

    return-void
.end method

.method private showAircraftInfoPopWindow(Landroid/view/View;)V
    .locals 3

    .line 248
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_item_aircraft_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 250
    sget v1, Lcom/powervision/aircraft/R$id;->side_bar_aircraft_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoClose:Landroid/widget/ImageView;

    .line 251
    sget v1, Lcom/powervision/aircraft/R$id;->side_bar_aircraft_satellite_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSatelliteCoundtTv:Landroid/widget/TextView;

    .line 252
    sget v1, Lcom/powervision/aircraft/R$id;->side_bar_wifi_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mWifiIcon:Landroid/widget/ImageView;

    .line 253
    sget v1, Lcom/powervision/aircraft/R$id;->side_bar_aircraft_battery_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryIcon:Landroid/widget/ImageView;

    .line 254
    sget v1, Lcom/powervision/aircraft/R$id;->side_bar_aircraft_battery_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryTv:Landroid/widget/TextView;

    .line 255
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$1;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$1;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    .line 263
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V

    const/4 v0, 0x4

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$2;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private showBottomlayout()V
    .locals 7

    .line 382
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 383
    sget v0, Lcom/powervision/aircraft/R$id;->find_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 384
    sget v2, Lcom/powervision/aircraft/R$id;->find_aircraft_location_content:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationTv:Landroid/widget/TextView;

    .line 385
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/powervision/aircraft/R$id;->find_aircraft_map_fix_button:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mfixButton:Landroid/widget/ToggleButton;

    .line 386
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/powervision/aircraft/R$id;->find_aircraft_warring_bt:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mWarringLightingBt:Landroid/widget/TextView;

    .line 387
    iget-wide v2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationTv:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%s,%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mfixButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 392
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mWarringLightingBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    return-void
.end method

.method private showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V
    .locals 7

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 365
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 366
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 369
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 370
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 372
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 373
    aget v5, v4, v1

    sub-int/2addr v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz p4, :cond_0

    .line 375
    aget p4, v4, v1

    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v5, p4, v2

    .line 377
    :cond_0
    aget p4, v4, v0

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    add-int/2addr p4, v0

    div-int/2addr p2, v3

    sub-int/2addr p4, p2

    .line 377
    invoke-virtual {p3, p1, v1, v5, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private updateLocationViews()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mUserLocation:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationType:I

    if-nez v1, :cond_0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_find_user_location_checked:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_find_user_location:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLocation:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_find_device_location_checked:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_find_device_location:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public changeLightingViewChange()V
    .locals 1

    .line 511
    new-instance v0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$7;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$7;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getBatteryElectric(FIIIIIIIIIII)V
    .locals 0

    .line 529
    new-instance p2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;F)V

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBatteryTime(I)V
    .locals 0

    return-void
.end method

.method public getFlyBatteryElectric(II)V
    .locals 0

    return-void
.end method

.method public getHandhledBatteryValue(F)V
    .locals 0

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 96
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 97
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 98
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_activity_find_aircraft_layout:I

    return v0
.end method

.method public getRemoteElectric(I)V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   getRemoteElectric ... electric= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSatellitesNum(I)V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   getSatellitesNum ... num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initData()V
    .locals 4

    const-string v0, "last"

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aircraft_lat"

    .line 118
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "aircraft_lon"

    .line 119
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v1, v2

    .line 120
    invoke-static {v1, v2}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLat:D

    int-to-double v0, v0

    .line 121
    invoke-static {v0, v1}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLng:D

    .line 125
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->initSDKs()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/MapSideBarView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapSideBarView:Lcom/powervision/aircraft/ui/views/MapSideBarView;

    .line 104
    sget v0, Lcom/powervision/aircraft/R$id;->find_back_bt:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBackBt:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/powervision/aircraft/R$id;->find_other_map_bt:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mOtherMaps:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->initMap(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$getBatteryElectric$1$FindAircraftActivity(F)V
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->setBatteryElectric(F)V

    return-void
.end method

.method public synthetic lambda$getSatellitesNum$2$FindAircraftActivity(I)V
    .locals 0

    .line 556
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->setSatelliteNum(I)V

    return-void
.end method

.method public synthetic lambda$setGetParameterResult$0$FindAircraftActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "UPLOAD"

    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TIMEOUT"

    const-string v3, "PV_V_FIND_VEL"

    const-string v4, "FAILED"

    const-string v5, "SUCCESS"

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne p4, v6, :cond_0

    const/4 v1, 0x1

    .line 488
    :cond_0
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    .line 489
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   setGetParameterResult .... UPLOAD   .. SUCCESS...i="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->changeLightingViewChange()V

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    const-string p2, "   setGetParameterResult ..UPLOAD.. FAILED"

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 494
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    const-string p2, "   setGetParameterResult ..UPLOAD.. TIMEOUT"

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "DOWNLOAD"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 497
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-ne p4, v6, :cond_4

    const/4 v1, 0x1

    .line 498
    :cond_4
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    .line 499
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   setGetParameterResult ....DOWNLOAD  ...  SUCCESS...i="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->changeLightingViewChange()V

    goto :goto_0

    .line 501
    :cond_5
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 502
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    const-string p2, "   setGetParameterResult ....DOWNLOAD  ...  FAILED... "

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 504
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    const-string p2, "   setGetParameterResult ....DOWNLOAD  ...  TIMEOUT... "

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 440
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 400
    sget p2, Lcom/powervision/aircraft/R$mipmap;->toggle_btn_open:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 402
    :cond_0
    sget p2, Lcom/powervision/aircraft/R$mipmap;->toggle_btn_close:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 409
    sget v0, Lcom/powervision/aircraft/R$id;->find_back_bt:I

    if-ne p1, v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->onBackPressed()V

    goto :goto_1

    .line 411
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->find_other_map_bt:I

    if-ne p1, v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->goGoogleMap()V

    goto :goto_1

    .line 426
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->find_aircraft_warring_bt:I

    if-ne p1, v0, :cond_3

    .line 427
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    const-string v0, "PV_V_FIND_VEL"

    if-eqz p1, :cond_2

    .line 428
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 430
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    .line 432
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      click .... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLightingOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClickLocation(Landroid/view/View;)V
    .locals 3

    .line 319
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_find_popup_location:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 321
    sget v1, Lcom/powervision/aircraft/R$id;->aircraft_user_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mUserLocation:Landroid/widget/ImageView;

    .line 322
    sget v1, Lcom/powervision/aircraft/R$id;->aircraft_device_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLocation:Landroid/widget/ImageView;

    .line 324
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mUserLocation:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$5;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$5;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mDeviceLocation:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->updateLocationViews()V

    .line 343
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public onClickLock(Z)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->setMapLock(Z)V

    return-void
.end method

.method public onClickShow(Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showAircraftInfoPopWindow(Landroid/view/View;)V

    return-void
.end method

.method public onClickSwitchMode(Landroid/view/View;)V
    .locals 3

    .line 275
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_find_popup_switch_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    sget v1, Lcom/powervision/aircraft/R$id;->gaode_layer_standard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mStandardLayer:Landroid/widget/ImageView;

    .line 278
    sget v1, Lcom/powervision/aircraft/R$id;->gaode_layer_satellite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    .line 280
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v1}, Lcom/powervision/map/manager/MapSwitchManager;->isMapTypeNormal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mStandardLayer:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mStandardLayer:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSateLliteLayer:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mStandardLayer:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$4;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$4;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showLeftPopup(Landroid/view/View;Landroid/view/View;Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;)V

    .line 173
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 174
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setSatellitesListener(Lcom/powervision/sdk/callback/Ap03SatellitesListener;)V

    .line 175
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 177
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMapLoad()V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->initMapMarket()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onPause()V

    .line 164
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onResume()V

    .line 158
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBatteryElectric(F)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryTv:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_1
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 232
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_20:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42200000    # 40.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 234
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_40:I

    goto :goto_0

    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 236
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_60:I

    goto :goto_0

    :cond_4
    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 238
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_80:I

    goto :goto_0

    .line 240
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_100:I

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBatteryTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setGetParameterResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   setGetParameterResult ... s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  s1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  s2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$WspX3EKmbk20d2gt12zcLDSjHVQ;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$WspX3EKmbk20d2gt12zcLDSjHVQ;-><init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mMapSideBarView:Lcom/powervision/aircraft/ui/views/MapSideBarView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->setSideBarItemClickListener(Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mOtherMaps:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->Tag:Ljava/lang/String;

    const-string v1, "      downloadParameter .... PV_V_FIND_VEL"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->showBottomlayout()V

    return-void
.end method

.method public setRemoteElectric(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mWifiIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    :cond_1
    const/16 v0, 0x19

    if-ge p1, v0, :cond_2

    .line 211
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_1:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 213
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_2:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x4b

    if-ge p1, v0, :cond_4

    .line 215
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_3:I

    goto :goto_0

    .line 217
    :cond_4
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_4:I

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public setSatelliteNum(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mInfoPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->mSatelliteCoundtTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
