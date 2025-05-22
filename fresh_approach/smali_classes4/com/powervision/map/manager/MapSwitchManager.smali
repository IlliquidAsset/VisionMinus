.class public Lcom/powervision/map/manager/MapSwitchManager;
.super Ljava/lang/Object;
.source "MapSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapSwitchManager"


# instance fields
.field private airMapView:Lcom/powervision/airmap/mapview/AirMapView;

.field private aircraftLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private distanceListener:Lcom/powervision/base/imap/DistanceListener;

.field private logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

.field private mAircraftLocationChangeListener:Lcom/powervision/map/callback/AircraftLocationChangeListener;

.field noFlightLog:Z

.field private onChangeListener:Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;

.field private userLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/airmap/mapview/AirMapView;Landroid/os/Bundle;Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->noFlightLog:Z

    .line 63
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    .line 65
    iput-boolean p4, p0, Lcom/powervision/map/manager/MapSwitchManager;->noFlightLog:Z

    .line 66
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 67
    invoke-virtual {p2, p3, p4}, Lcom/powervision/airmap/mapview/AirMapView;->initMap(Landroid/os/Bundle;Z)V

    .line 68
    invoke-direct {p0}, Lcom/powervision/map/manager/MapSwitchManager;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/map/manager/MapSwitchManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/map/manager/MapSwitchManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/powervision/map/manager/MapSwitchManager;->requestBasicPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/map/callback/AircraftLocationChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/map/manager/MapSwitchManager;->mAircraftLocationChangeListener:Lcom/powervision/map/callback/AircraftLocationChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/airmap/mapview/AirMapView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    return-object p0
.end method

.method private destroyLocation()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->destroyLocation()V

    .line 238
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->onMapDestroy()V

    return-void
.end method

.method private init()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/powervision/map/manager/MapSwitchManager;->requestBasicPermission()V

    return-void
.end method

.method private initFlightLogUtil()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

    return-void
.end method

.method private isInArea(DD)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private requestBasicPermission()V
    .locals 9

    .line 88
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iget-object v1, p0, Lcom/powervision/map/manager/MapSwitchManager;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.RECORD_AUDIO"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 91
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/powervision/map/manager/MapSwitchManager$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/powervision/map/manager/MapSwitchManager$1;-><init>(Lcom/powervision/map/manager/MapSwitchManager;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    new-instance v1, Lcom/powervision/map/manager/MapSwitchManager$2;

    invoke-direct {v1, p0}, Lcom/powervision/map/manager/MapSwitchManager$2;-><init>(Lcom/powervision/map/manager/MapSwitchManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->addLocationListener(Lcom/powervision/sdk/callback/Ap03LocationListener;)V

    return-void
.end method


# virtual methods
.method public addReturnPoint(II)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/airmap/mapview/AirMapView;->addReturnPoint(II)V

    return-void
.end method

.method public checkNewerMode()Z
    .locals 4

    .line 261
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getNewerMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 262
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v3, 0xf4

    invoke-virtual {v1, v3, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

.method public drawLineEnable(Z)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->drawLineEnable(Z)V

    return-void
.end method

.method public drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method public drawNewerMode(II)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/airmap/mapview/AirMapView;->drawNewerMode(II)V

    return-void
.end method

.method public drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V

    return-void
.end method

.method public isMapTypeNormal()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->isMapTypeNormal()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/powervision/map/manager/MapSwitchManager;->destroyLocation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->onMapResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeHomePoint()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->removeHomePoint()V

    return-void
.end method

.method public removeNewerMode()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->removeNewerMode()V

    return-void
.end method

.method public setAirAlwaysCenter(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setAirAlwaysCenter(Z)V

    return-void
.end method

.method public setAirRotateAngle(F)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setAirRotateAngle(F)V

    return-void
.end method

.method public setAircraftLocationListener(Lcom/powervision/map/callback/AircraftLocationChangeListener;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager;->mAircraftLocationChangeListener:Lcom/powervision/map/callback/AircraftLocationChangeListener;

    return-void
.end method

.method public setDistanceListener(Lcom/powervision/base/imap/DistanceListener;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setOnDistanceListener(Lcom/powervision/base/imap/DistanceListener;)V

    return-void
.end method

.method public setLocationCenter(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->moveToCenter(I)V

    return-void
.end method

.method public setMapLock(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setMapLock(Z)V

    return-void
.end method

.method public setMapType(Z)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setMapType(Z)V

    return-void
.end method

.method public setMyLocationChangeListener(Lcom/powervision/base/imap/MyLocationChangeListener;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setMyLocationChangeListener(Lcom/powervision/base/imap/MyLocationChangeListener;)V

    return-void
.end method

.method public setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager;->airMapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V

    return-void
.end method

.method public setOnChangeListener(Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager;->onChangeListener:Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;

    return-void
.end method
