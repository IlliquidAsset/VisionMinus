.class public Lcom/powervision/airmap/mapview/AirMapView;
.super Lcom/google/android/gms/maps/MapView;
.source "AirMapView.java"

# interfaces
.implements Lcom/powervision/base/imap/IMapActions;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;,
        Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirMapView"


# instance fields
.field private airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

.field private aircraftMarker:Lcom/google/android/gms/maps/model/Marker;

.field private aircraftMarkerLog:Lcom/google/android/gms/maps/model/Marker;

.field private alwaysCenter:Z

.field private context:Landroid/content/Context;

.field private currLocationMarker:Lcom/google/android/gms/maps/model/Marker;

.field private distanceListener:Lcom/powervision/base/imap/DistanceListener;

.field private drawLineEnable:Z

.field private googleEnable:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

.field private lastBearing:F

.field private latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private logPolyline:Lcom/google/android/gms/maps/model/Polyline;

.field private logPolyline2:Lcom/google/android/gms/maps/model/Polyline;

.field private logPolyline3:Lcom/google/android/gms/maps/model/Polyline;

.field private logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

.field private mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private mDirectLine:Lcom/google/android/gms/maps/model/Polyline;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGoogleFirstFix:Z

.field private mHomeMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mHomeMarkerLog:Lcom/google/android/gms/maps/model/Marker;

.field private mHomePosition:Lcom/google/android/gms/maps/model/LatLng;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mNewerCircle:Lcom/google/android/gms/maps/model/Circle;

.field private mOnMapLoadListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;

.field private mOnMapShotListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;

.field private myLocationChangeListener:Lcom/powervision/base/imap/MyLocationChangeListener;

.field private nativePolygonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private notFlightLog:Z

.field private onAirMapClickListener:Lcom/powervision/base/imap/OnAirMapClickListener;

.field private onlinePolygonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;

.field private userMarkerLog:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/powervision/airmap/mapview/AirMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/airmap/mapview/AirMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleFirstFix:Z

    const/4 p3, 0x0

    .line 98
    iput-object p3, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    .line 110
    iput-boolean p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->drawLineEnable:Z

    const/4 p2, 0x1

    .line 124
    iput-boolean p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->notFlightLog:Z

    .line 146
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/airmap/mapview/AirMapView;)Lcom/powervision/base/imap/OnAirMapClickListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/powervision/airmap/mapview/AirMapView;->onAirMapClickListener:Lcom/powervision/base/imap/OnAirMapClickListener;

    return-object p0
.end method

.method private buildGoogleApiClient()V
    .locals 2

    .line 515
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 518
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method private checkGoogleMapService(Z)Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    move-result v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGoogleMapService:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkGoogle"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 175
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/powervision/airmap/R$string;->AP03_Msg_123:I

    new-instance v2, Lcom/powervision/airmap/mapview/AirMapView$1;

    invoke-direct {v2, p0}, Lcom/powervision/airmap/mapview/AirMapView$1;-><init>(Lcom/powervision/airmap/mapview/AirMapView;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/airmap/R$string;->AP03_Msg_139_6:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 185
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getGoogleMarkerOption(DDIF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    .line 666
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    if-nez p5, :cond_0

    .line 668
    sget p5, Lcom/powervision/airmap/R$mipmap;->aircraft_find_device_location_checked:I

    invoke-static {p5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 669
    new-instance p5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 670
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    .line 671
    invoke-virtual {p1, p6}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    goto :goto_0

    :cond_0
    const/4 p6, 0x1

    if-ne p5, p6, :cond_1

    .line 673
    sget p5, Lcom/powervision/airmap/R$mipmap;->aircraft_find_return_point_location_checked:I

    invoke-static {p5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 674
    new-instance p5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 675
    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 676
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    :cond_1
    const/4 p6, 0x2

    if-ne p5, p6, :cond_2

    .line 678
    sget p5, Lcom/powervision/airmap/R$mipmap;->aircraft_user_location:I

    invoke-static {p5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 679
    new-instance p5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, p5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 680
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->userMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getPolylineOptions(Ljava/util/List;II)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;II)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 757
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v3

    .line 758
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v5}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 757
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAirMarker()V
    .locals 0

    return-void
.end method

.method public addHomeMarkLocation(DD)V
    .locals 8

    .line 660
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1, p2}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p1

    .line 661
    invoke-static {p3, p4}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 662
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/powervision/airmap/mapview/AirMapView;->getGoogleMarkerOption(DDIF)Lcom/google/android/gms/maps/model/MarkerOptions;

    return-void
.end method

.method public addMarkerOption(DD)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2

    .line 583
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 584
    sget v1, Lcom/powervision/airmap/R$mipmap;->aircraft_find_device_location_checked:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 585
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public addReturnPoint(II)V
    .locals 3

    int-to-double v0, p1

    .line 353
    invoke-static {v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double p1, p2

    .line 354
    invoke-static {p1, p2}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p1

    .line 355
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomePosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 356
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 359
    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 360
    sget p2, Lcom/powervision/airmap/R$mipmap;->aircraft_return_home_icon:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 361
    invoke-virtual {p1, p2, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 362
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomePosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 363
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 364
    invoke-virtual {p1, p2, p2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    :goto_0
    return-void
.end method

.method public addUserOrDeviceMarkerLocation(DDIF)V
    .locals 7

    if-nez p5, :cond_0

    .line 652
    invoke-direct/range {p0 .. p6}, Lcom/powervision/airmap/mapview/AirMapView;->getGoogleMarkerOption(DDIF)Lcom/google/android/gms/maps/model/MarkerOptions;

    goto :goto_0

    :cond_0
    const/4 p6, 0x2

    if-ne p5, p6, :cond_1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 654
    invoke-direct/range {v0 .. v6}, Lcom/powervision/airmap/mapview/AirMapView;->getGoogleMarkerOption(DDIF)Lcom/google/android/gms/maps/model/MarkerOptions;

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAndDrawDirectLine()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mDirectLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 286
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iget-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->list:Ljava/util/List;

    .line 298
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/airmap/R$color;->blue:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mDirectLine:Lcom/google/android/gms/maps/model/Polyline;

    :cond_2
    return-void
.end method

.method public destroyLocation()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public drawAirCraftMarkerAndLines(II)V
    .locals 8

    int-to-double v0, p1

    .line 417
    invoke-static {v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double p1, p2

    .line 418
    invoke-static {p1, p2}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p1

    .line 420
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    .line 421
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->distanceListener:Lcom/powervision/base/imap/DistanceListener;

    if-eqz p1, :cond_1

    .line 422
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_0

    iget-wide p1, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide p1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide p1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide p1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    .line 424
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v7}, Lcom/powervision/airmap/utils/PositionUtil;->getDistance(DDDD)D

    move-result-wide p1

    .line 426
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->distanceListener:Lcom/powervision/base/imap/DistanceListener;

    double-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/powervision/base/imap/DistanceListener;->onDistanceChange(F)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->distanceListener:Lcom/powervision/base/imap/DistanceListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/powervision/base/imap/DistanceListener;->onDistanceChange(F)V

    .line 431
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 432
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/powervision/airmap/mapview/AirMapView;->addMarkerOption(DD)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 434
    invoke-virtual {p0, p2}, Lcom/powervision/airmap/mapview/AirMapView;->moveToCenter(I)V

    .line 435
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarker:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_1

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 439
    :goto_1
    iget-boolean p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->alwaysCenter:Z

    if-eqz p1, :cond_3

    .line 440
    invoke-virtual {p0, p2}, Lcom/powervision/airmap/mapview/AirMapView;->moveToCenter(I)V

    .line 442
    :cond_3
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_4

    .line 443
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 446
    :cond_4
    iget-boolean p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->drawLineEnable:Z

    if-eqz p1, :cond_6

    .line 447
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    if-nez p1, :cond_5

    .line 448
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    .line 450
    :cond_5
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/airmap/R$color;->blue:I

    .line 452
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 451
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_2

    .line 454
    :cond_6
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 455
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->latLngs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_2
    return-void
.end method

.method public drawFindAircraftMarker(Ljava/lang/String;DD)V
    .locals 2

    .line 591
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 592
    sget v1, Lcom/powervision/airmap/R$mipmap;->aircraft_find_device_location_checked:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 593
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 594
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 595
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method

.method public drawLineEnable(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->drawLineEnable:Z

    return-void
.end method

.method public drawMapLines(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;II)V"
        }
    .end annotation

    if-gez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ge p2, v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline2:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_2

    .line 714
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline3:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 719
    :cond_3
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 722
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/airmap/mapview/AirMapView;->getPolylineOptions(Ljava/util/List;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 723
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline:Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_0

    :cond_5
    const/16 v0, 0x4b0

    if-ge p2, v0, :cond_9

    .line 725
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline2:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_6

    .line 726
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 728
    :cond_6
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline3:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_7

    .line 729
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 731
    :cond_7
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_8

    .line 732
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 734
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/airmap/mapview/AirMapView;->getPolylineOptions(Ljava/util/List;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 735
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline2:Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_0

    :cond_9
    const/16 v0, 0x708

    if-ge p2, v0, :cond_c

    .line 737
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline3:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_a

    .line 738
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 740
    :cond_a
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_b

    .line 741
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 743
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/airmap/mapview/AirMapView;->getPolylineOptions(Ljava/util/List;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 744
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline3:Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_0

    .line 746
    :cond_c
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_d

    .line 747
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 749
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/airmap/mapview/AirMapView;->getPolylineOptions(Ljava/util/List;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 750
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline4:Lcom/google/android/gms/maps/model/Polyline;

    :goto_0
    return-void
.end method

.method public drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V
    .locals 2

    .line 386
    iget-object p1, p1, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geometry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/base/db/model/Geometry;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/db/model/Geometry;

    .line 389
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 390
    invoke-virtual {p1}, Lcom/powervision/base/db/model/Geometry;->getCoordinates()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/airmap/utils/PolygonUtil;->getGooglePolygonOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    return-void
.end method

.method public drawNewerMode(II)V
    .locals 3

    .line 370
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getNewerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    int-to-double v0, p1

    .line 373
    invoke-static {v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double p1, p2

    .line 374
    invoke-static {p1, p2}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p1

    .line 375
    iget-object v2, p0, Lcom/powervision/airmap/mapview/AirMapView;->mNewerCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v2, :cond_1

    .line 376
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 378
    :cond_1
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 379
    new-instance p1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    const/16 p2, 0x19

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p2, v0, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    const/16 p2, 0xf0

    .line 380
    invoke-static {p2, v0, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p1

    .line 381
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mNewerCircle:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method public drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V
    .locals 2

    .line 399
    invoke-virtual {p1}, Lcom/powervision/base/db/model/GeoOnLineData;->getGeometry()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 400
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/powervision/base/db/model/Geometry;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/db/model/Geometry;

    .line 401
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 402
    invoke-virtual {p1}, Lcom/powervision/base/db/model/Geometry;->getCoordinates()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/airmap/utils/PolygonUtil;->getGooglePolygonOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    return-void
.end method

.method public getAircraftMarkerLog()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getLogPolyline()Lcom/google/android/gms/maps/model/Polyline;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->logPolyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object v0
.end method

.method public getMapScreenShot(Ljava/lang/Object;)V
    .locals 1

    .line 619
    instance-of v0, p1, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    if-eqz v0, :cond_0

    .line 620
    check-cast p1, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    .line 621
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    :cond_0
    return-void
.end method

.method public getUserMarkerLog()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->userMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getmHomeMarkerLog()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public inGeoArea(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public initMap(Landroid/os/Bundle;Z)V
    .locals 0

    .line 156
    iput-boolean p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->notFlightLog:Z

    .line 157
    invoke-virtual {p0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 158
    invoke-direct {p0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->checkGoogleMapService(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleEnable:Z

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0, p0}, Lcom/powervision/airmap/mapview/AirMapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method

.method public isGoogleEnable()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleEnable:Z

    return v0
.end method

.method public isMapTypeNormal()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public moveTargetLocation(IDD)V
    .locals 3

    const/high16 v0, 0x41900000    # 18.0f

    if-nez p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_1

    .line 602
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 603
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double p1, p2, v1

    if-eqz p1, :cond_1

    cmpl-double p1, p4, v1

    if-eqz p1, :cond_1

    .line 606
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 607
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 608
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveToCenter(I)V
    .locals 2

    const/high16 v0, 0x41900000    # 18.0f

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->airPositionTrans:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_2

    .line 313
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_2

    .line 318
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 319
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomePosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_2

    .line 323
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCameraMove()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 615
    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->lastBearing:F

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 524
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->context:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 528
    :cond_0
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x1388

    .line 529
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 530
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 531
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 534
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed --- > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirMapView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const-string v0, "AirMapView"

    const-string v1, "google Location Changed"

    .line 545
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "google : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 551
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->currLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 553
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->currLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 555
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 557
    sget v1, Lcom/powervision/airmap/R$mipmap;->aircraft_preson_location_icon:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 559
    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->currLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 560
    iget-boolean v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleFirstFix:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleFirstFix:Z

    .line 562
    iget-boolean v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->notFlightLog:Z

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->myLocationChangeListener:Lcom/powervision/base/imap/MyLocationChangeListener;

    if-eqz v0, :cond_3

    .line 567
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/powervision/base/imap/MyLocationChangeListener;->onLocationChange(DD)V

    .line 570
    :cond_3
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setUserLatitude(D)V

    .line 571
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setUserLongitude(D)V

    return-void
.end method

.method public onMapDestroy()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/powervision/airmap/mapview/AirMapView;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapShotListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    iput-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapShotListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapLoadListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;

    if-eqz v0, :cond_1

    .line 217
    iput-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapLoadListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;

    :cond_1
    return-void
.end method

.method public onMapPause()V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/powervision/airmap/mapview/AirMapView;->onPause()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 474
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 475
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    .line 476
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 483
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 485
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 487
    invoke-direct {p0}, Lcom/powervision/airmap/mapview/AirMapView;->buildGoogleApiClient()V

    .line 489
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 491
    new-instance v0, Lcom/powervision/airmap/mapview/AirMapView$2;

    invoke-direct {v0, p0}, Lcom/powervision/airmap/mapview/AirMapView$2;-><init>(Lcom/powervision/airmap/mapview/AirMapView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 499
    new-instance v0, Lcom/powervision/airmap/mapview/AirMapView$3;

    invoke-direct {v0, p0}, Lcom/powervision/airmap/mapview/AirMapView$3;-><init>(Lcom/powervision/airmap/mapview/AirMapView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 509
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapLoadListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;

    if-eqz p1, :cond_0

    .line 510
    invoke-interface {p1}, Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;->onMapLoad()V

    :cond_0
    return-void
.end method

.method public onMapResume()V
    .locals 2

    const-string v0, "checkGoogle"

    const-string v1, "onMapResume: ..."

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/powervision/airmap/mapview/AirMapView;->checkGoogleMapService(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/powervision/airmap/mapview/AirMapView;->onResume()V

    :cond_0
    return-void
.end method

.method public onMapSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/powervision/airmap/mapview/AirMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapShotListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 766
    invoke-interface {v0, p1}, Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;->onScreenShot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public removeHomePoint()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 341
    iput-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 343
    :cond_0
    iput-object v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomePosition:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public removeNewerMode()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mNewerCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->mNewerCircle:Lcom/google/android/gms/maps/model/Circle;

    :cond_0
    return-void
.end method

.method public requestPermission()V
    .locals 0

    return-void
.end method

.method public setAirAlwaysCenter(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->alwaysCenter:Z

    return-void
.end method

.method public setAirRotateAngle(F)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    const v1, 0x40490fdc

    div-float/2addr p1, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    .line 305
    iget v1, p0, Lcom/powervision/airmap/mapview/AirMapView;->lastBearing:F

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setFlightLog()V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setMapLock(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMapUiSettings:Lcom/google/android/gms/maps/UiSettings;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    return-void
.end method

.method public setMapType(Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public setMyLocationChangeListener(Lcom/powervision/base/imap/MyLocationChangeListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->myLocationChangeListener:Lcom/powervision/base/imap/MyLocationChangeListener;

    return-void
.end method

.method public setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->onAirMapClickListener:Lcom/powervision/base/imap/OnAirMapClickListener;

    return-void
.end method

.method public setOnDistanceListener(Lcom/powervision/base/imap/DistanceListener;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->distanceListener:Lcom/powervision/base/imap/DistanceListener;

    return-void
.end method

.method public setOnMapLoadListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapLoadListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapLoadListener;

    return-void
.end method

.method public setOnMapShotListener(Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mOnMapShotListener:Lcom/powervision/airmap/mapview/AirMapView$OnMapShotListener;

    return-void
.end method

.method public startLocation()V
    .locals 0

    return-void
.end method

.method public stopLocation()V
    .locals 0

    return-void
.end method

.method public updateLogMarker(DDDDDDD)V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    double-to-float p1, p1

    .line 690
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 691
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->aircraftMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p2, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->userMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_1

    .line 695
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p2, p7, p8, p9, p10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_2

    .line 698
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p11, p12, p13, p14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 699
    iget-object p2, p0, Lcom/powervision/airmap/mapview/AirMapView;->mHomeMarkerLog:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_2
    return-void
.end method
