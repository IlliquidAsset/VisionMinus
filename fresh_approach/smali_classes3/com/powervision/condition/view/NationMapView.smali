.class public Lcom/powervision/condition/view/NationMapView;
.super Landroid/widget/FrameLayout;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/condition/view/NationMapView$QueryThread;
    }
.end annotation


# static fields
.field private static final CYCLE_ZOOM_LEVEL:I = 0x12

.field public static final DASH:Lcom/google/android/gms/maps/model/PatternItem;

.field public static final DOT:Lcom/google/android/gms/maps/model/PatternItem;

.field public static final GAP:Lcom/google/android/gms/maps/model/PatternItem;

.field private static final MAPVIEW_BUNDLE_KEY:Ljava/lang/String; = "MapViewBundleKey"

.field public static final PATTERN_DASH_LENGTH_PX:I = 0x14

.field public static final PATTERN_GAP_LENGTH_PX:I = 0x14

.field public static final PATTERN_POLYGON_ALPHA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field private static SHIP_ROUTE_LINE_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NationMapView"

.field private static final ZOOM_LEVEL:I = 0x13


# instance fields
.field private aMap:Lcom/google/android/gms/maps/GoogleMap;

.field private context:Landroid/content/Context;

.field private fishMarker:Lcom/google/android/gms/maps/model/Marker;

.field private googleEnable:Z

.field private homeLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private homeMarker:Lcom/google/android/gms/maps/model/Marker;

.field private interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

.field private isFirstLocated:Z

.field private isMapDestroy:Z

.field lastBearing:F

.field private latLngA:Lcom/google/android/gms/maps/model/LatLng;

.field private latLngB:Lcom/google/android/gms/maps/model/LatLng;

.field private latLngC:Lcom/google/android/gms/maps/model/LatLng;

.field private latLngD:Lcom/google/android/gms/maps/model/LatLng;

.field private latLngLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mAddInterestMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

.field private mCanAddInterest:Z

.field private mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mImageMapMask:Landroid/widget/ImageView;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mMapTouchX:F

.field private mMapTouchY:F

.field private mMapView:Lcom/google/android/gms/maps/MapView;

.field private mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private mMovingMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mMovingNationMarker:Lcom/powervision/condition/widget/NationMarker;

.field private mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

.field private mOnCameraChangeListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;

.field private mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

.field private mOnLocationChangedListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnLocationChangedListener;

.field private mOnMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

.field private mOnMapLongClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapLongClickListener;

.field private mOnMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

.field private mOnMarkerDragListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;

.field private mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

.field private mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

.field private mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

.field private mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

.field private mapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field mapLoadedListener:Lcom/powervision/opensource/onMapLoadedListener;

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private markerA:Lcom/google/android/gms/maps/model/Marker;

.field private markerB:Lcom/google/android/gms/maps/model/Marker;

.field private markerC:Lcom/google/android/gms/maps/model/Marker;

.field private markerD:Lcom/google/android/gms/maps/model/Marker;

.field private markerLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private markerMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field onMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

.field private options:Lcom/google/android/gms/maps/model/PolylineOptions;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private polyMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private polygon:Lcom/google/android/gms/maps/model/Polygon;

.field polygonArea:Lcom/google/android/gms/maps/model/Polygon;

.field polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;

.field private polylines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private previousLatitude:D

.field private previousLongitude:D

.field private rectA:Lcom/google/android/gms/maps/model/LatLng;

.field private rectB:Lcom/google/android/gms/maps/model/LatLng;

.field private rectC:Lcom/google/android/gms/maps/model/LatLng;

.field private rectD:Lcom/google/android/gms/maps/model/LatLng;

.field private routePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private safeZonelatLngA:Lcom/google/android/gms/maps/model/LatLng;

.field private safeZonelatLngB:Lcom/google/android/gms/maps/model/LatLng;

.field private safeZonelatLngC:Lcom/google/android/gms/maps/model/LatLng;

.field private safeZonelatLngD:Lcom/google/android/gms/maps/model/LatLng;

.field private startMarkerLaLng:Lcom/google/android/gms/maps/model/LatLng;

.field private uiSettings:Lcom/google/android/gms/maps/UiSettings;

.field private zoneLine:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2838
    new-instance v0, Lcom/google/android/gms/maps/model/Dot;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/Dot;-><init>()V

    sput-object v0, Lcom/powervision/condition/view/NationMapView;->DOT:Lcom/google/android/gms/maps/model/PatternItem;

    .line 2839
    new-instance v0, Lcom/google/android/gms/maps/model/Dash;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    sput-object v0, Lcom/powervision/condition/view/NationMapView;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    .line 2840
    new-instance v0, Lcom/google/android/gms/maps/model/Gap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    sput-object v0, Lcom/powervision/condition/view/NationMapView;->GAP:Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2841
    sget-object v0, Lcom/powervision/condition/view/NationMapView;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/powervision/condition/view/NationMapView;->PATTERN_POLYGON_ALPHA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/powervision/condition/view/NationMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 206
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/condition/view/NationMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->polylines:Ljava/util/ArrayList;

    .line 126
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    .line 127
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    const/4 p2, 0x0

    .line 130
    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 132
    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 136
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    .line 137
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    .line 158
    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    .line 168
    iput-wide p2, p0, Lcom/powervision/condition/view/NationMapView;->previousLatitude:D

    .line 169
    iput-wide p2, p0, Lcom/powervision/condition/view/NationMapView;->previousLongitude:D

    .line 171
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    .line 172
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    const/high16 p2, -0x40800000    # -1.0f

    .line 174
    iput p2, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchX:F

    .line 175
    iput p2, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchY:F

    const/4 p2, 0x1

    .line 177
    iput-boolean p2, p0, Lcom/powervision/condition/view/NationMapView;->isFirstLocated:Z

    .line 183
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    const/4 p2, 0x0

    .line 191
    iput-boolean p2, p0, Lcom/powervision/condition/view/NationMapView;->isMapDestroy:Z

    .line 528
    new-instance p2, Lcom/powervision/condition/view/NationMapView$2;

    invoke-direct {p2, p0}, Lcom/powervision/condition/view/NationMapView$2;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 762
    new-instance p2, Lcom/powervision/condition/view/NationMapView$3;

    invoke-direct {p2, p0}, Lcom/powervision/condition/view/NationMapView$3;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->onMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

    .line 877
    new-instance p2, Lcom/powervision/condition/view/NationMapView$4;

    invoke-direct {p2, p0}, Lcom/powervision/condition/view/NationMapView$4;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView;->mapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    const/4 p2, 0x0

    .line 1070
    iput p2, p0, Lcom/powervision/condition/view/NationMapView;->lastBearing:F

    .line 211
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->context:Landroid/content/Context;

    .line 212
    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->startMarkerLaLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->latLngB:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngB:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->startMarkerLaLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->latLngC:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngC:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->latLngD:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngD:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawSafeAreaPolygon(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->updateMarkerPolyline(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->checkAirlinePoint(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/condition/widget/MovingPointOverlay;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/powervision/condition/view/NationMapView;->latLngA:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngA:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method private checkAirlinePoint(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 5

    .line 1483
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1484
    invoke-static {p1, v0}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1487
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_0

    .line 1488
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->moreThan1000m()V

    :cond_0
    return v1

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 1494
    invoke-static {v2, p1}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v2

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMapClickDrawAirline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NationMapView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1501
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_4

    .line 1502
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->lessThan5m()V

    :cond_4
    return v1

    .line 1508
    :cond_5
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xff

    if-le p1, v0, :cond_7

    .line 1510
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_6

    .line 1511
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->moreThan255Point()V

    :cond_6
    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private checkGoogleMapService(Z)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    move-result v0

    .line 233
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

    .line 236
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/powervision/airmap/R$string;->AP03_Msg_123:I

    new-instance v2, Lcom/powervision/condition/view/NationMapView$1;

    invoke-direct {v2, p0}, Lcom/powervision/condition/view/NationMapView$1;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 243
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/airmap/R$string;->AP03_Msg_139_6:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private drawConerPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6

    .line 2143
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2145
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2146
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2147
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2149
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 2150
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 2151
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 2152
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const/4 v4, 0x1

    .line 2153
    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2154
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2155
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2156
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2157
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/airmap/R$mipmap;->ship_safe_zone_coner_point:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2158
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/powervision/airmap/R$mipmap;->ship_safe_zone_coner_point:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2159
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/powervision/airmap/R$mipmap;->ship_safe_zone_coner_point:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2160
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/powervision/airmap/R$mipmap;->ship_safe_zone_coner_point:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2161
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    .line 2162
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    .line 2163
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    .line 2164
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, p4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method

.method private drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/Polyline;"
        }
    .end annotation

    .line 2820
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 2821
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 2822
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 2823
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/airmap/R$color;->map_stroke_line_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    sget-object v1, Lcom/powervision/condition/view/NationMapView;->PATTERN_POLYGON_ALPHA:Ljava/util/List;

    .line 2824
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    const/high16 v1, 0x42c80000    # 100.0f

    .line 2825
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 2820
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    return-object p1
.end method

.method private drawRectPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6

    .line 1997
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 2001
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    .line 2004
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2006
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 2007
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_3
    const/4 v0, 0x1

    .line 2010
    invoke-virtual {p0, p1, v0}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2011
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    const/4 v1, 0x2

    .line 2013
    invoke-virtual {p0, p2, v1}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v3, 0x40000000    # 2.0f

    .line 2014
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    const/4 v2, 0x3

    .line 2016
    invoke-virtual {p0, p3, v2}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    iput-object v3, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v4, 0x40400000    # 3.0f

    .line 2017
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    const/4 v3, 0x4

    .line 2019
    invoke-virtual {p0, p4, v3}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v5, 0x40800000    # 4.0f

    .line 2020
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 2022
    iget-object v4, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngA:Lcom/google/android/gms/maps/model/LatLng;

    .line 2028
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngB:Lcom/google/android/gms/maps/model/LatLng;

    .line 2029
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngC:Lcom/google/android/gms/maps/model/LatLng;

    .line 2030
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngD:Lcom/google/android/gms/maps/model/LatLng;

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2033
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2037
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2039
    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 2047
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/powervision/condition/view/NationMapView$8;

    invoke-direct {p2, p0}, Lcom/powervision/condition/view/NationMapView$8;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    return-void
.end method

.method private drawSafeAreaPolygon(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/Polygon;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    .line 1792
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    const-string v1, "#4C67E194"

    .line 1793
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    .line 1791
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    return-object p1
.end method

.method private getFishView()Landroid/view/View;
    .locals 3

    .line 1714
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->view_fish_position_marker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getInterestPositionView()Landroid/view/View;
    .locals 3

    .line 1710
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->view_interest_position_marker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRoundViewByPosition(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1702
    invoke-direct {p0, p1, v0}, Lcom/powervision/condition/view/NationMapView;->getRoundViewByPosition(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getRoundViewByPosition(IZ)Landroid/view/View;
    .locals 3

    .line 1718
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->view_map_round_marker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1720
    sget v1, Lcom/powervision/airmap/R$id;->round_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/powervision/airmap/R$drawable;->line_over_bg:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 p2, 0x9

    if-le p1, p2, :cond_1

    const/16 p2, 0x64

    if-ge p1, p2, :cond_1

    const/high16 p2, 0x41500000    # 13.0f

    .line 1725
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x63

    if-le p1, p2, :cond_2

    const/high16 p2, 0x41200000    # 10.0f

    .line 1727
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1730
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getShipPositionView()Landroid/view/View;
    .locals 3

    .line 1706
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->view_ship_position_marker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/airmap/R$layout;->map_google_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    sget v1, Lcom/powervision/airmap/R$id;->map_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/MapView;

    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    .line 218
    sget v1, Lcom/powervision/airmap/R$id;->map_view_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mImageMapMask:Landroid/widget/ImageView;

    .line 219
    new-instance v1, Lcom/powervision/condition/utils/TouchableWrapper;

    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/powervision/condition/utils/TouchableWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    .line 220
    invoke-virtual {v1, v0}, Lcom/powervision/condition/utils/TouchableWrapper;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    invoke-virtual {p0, v0}, Lcom/powervision/condition/view/NationMapView;->addView(Landroid/view/View;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 222
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    sput v0, Lcom/powervision/condition/view/NationMapView;->SHIP_ROUTE_LINE_WIDTH:I

    return-void
.end method

.method private updateMarkerPolyline(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 7

    .line 1554
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    .line 1555
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 1556
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 1557
    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1561
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_2

    .line 1562
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1564
    :cond_2
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method


# virtual methods
.method public animateCameraNewLatLngZoom(Lcom/powervision/base/nationmap/model/NationLatLng;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public boatReturnSlide()V
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1825
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 1828
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1829
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    :cond_1
    return-void
.end method

.method protected declared-synchronized buildGoogleApiClient(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 459
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 462
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearMarkMap()V
    .locals 4

    const-string v0, "NationMapView"

    const-string v1, "clearMarkMap: null"

    .line 2330
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    .line 2333
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2334
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2336
    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2341
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 2342
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_1

    .line 2344
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2346
    :cond_3
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_4

    .line 2347
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2348
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 2350
    :cond_4
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_5

    .line 2351
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2352
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 2354
    :cond_5
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_6

    .line 2355
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 2356
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 2358
    :cond_6
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_7

    .line 2359
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 2360
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    :cond_7
    return-void
.end method

.method public clearMarker()V
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mAddInterestMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 1423
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    .line 1426
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_2
    return-void
.end method

.method public closeBoth()V
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2404
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_1
    return-void
.end method

.method public deletePoints()V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1624
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1626
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1627
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 1628
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 1631
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->updateMarker()V

    const/4 v0, 0x0

    .line 1632
    iput v0, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    return-void
.end method

.method public deleteScanPoints()V
    .locals 4

    .line 1640
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1644
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_2

    .line 1647
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1650
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1651
    :goto_1
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1652
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 1653
    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 1655
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    goto :goto_1

    .line 1657
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->drawPolygon()V

    return-void
.end method

.method public destroySmoothMarker()V
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    if-eqz v0, :cond_0

    .line 1817
    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->stopMove()V

    .line 1818
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->destroy()V

    :cond_0
    return-void
.end method

.method public drawGetScan()V
    .locals 3

    .line 1882
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 1883
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 1884
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 1886
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 1887
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v2, 0x13

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1888
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method public drawGetScheme()V
    .locals 3

    .line 1892
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 1893
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 1894
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 1896
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 1897
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v2, 0x13

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1898
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method public drawPolygon()V
    .locals 3

    .line 1431
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 1432
    new-instance v0, Lcom/powervision/base/nationmap/utils/Melkman;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-static {v1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapListToNationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/nationmap/utils/Melkman;-><init>(Ljava/util/List;)V

    .line 1433
    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/Melkman;->getTubaoPoint()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationListToAmapList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    .line 1435
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1438
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1439
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1440
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    const-string v1, "#4C67E194"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1441
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    .line 1442
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_1

    .line 1443
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_3

    .line 1449
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1451
    :cond_3
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    :goto_0
    return-void
.end method

.method public drawPolyline(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;)V"
        }
    .end annotation

    .line 2806
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 2807
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2809
    :cond_0
    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationListToAmapList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method public drawRememberRoute(DD)Z
    .locals 4

    .line 2790
    iget-wide v0, p0, Lcom/powervision/condition/view/NationMapView;->previousLatitude:D

    const/4 v2, 0x0

    cmpl-double v3, v0, p1

    if-nez v3, :cond_0

    iget-wide v0, p0, Lcom/powervision/condition/view/NationMapView;->previousLongitude:D

    cmpl-double v3, v0, p3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v0

    if-eqz v3, :cond_2

    cmpl-double v3, p3, v0

    if-nez v3, :cond_1

    goto :goto_0

    .line 2798
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2800
    iput-wide p3, p0, Lcom/powervision/condition/view/NationMapView;->previousLongitude:D

    .line 2801
    iput-wide p1, p0, Lcom/powervision/condition/view/NationMapView;->previousLatitude:D

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;
    .locals 2

    .line 1665
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1666
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 1667
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const v1, -0x39e3c400    # -9999.0f

    .line 1668
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1669
    invoke-virtual {p1, v1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/4 v1, 0x0

    .line 1670
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 1672
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/powervision/condition/view/NationMapView;->getRoundViewByPosition(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 1665
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    return-object p1
.end method

.method public drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;IZ)Lcom/google/android/gms/maps/model/Marker;
    .locals 2

    .line 1683
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1684
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 1685
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1686
    invoke-virtual {p1, v1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 1687
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lcom/powervision/condition/view/NationMapView;->getRoundViewByPosition(IZ)Landroid/view/View;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 1683
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    return-object p1
.end method

.method public drawRoute(DD)V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_4

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    if-nez v0, :cond_2

    .line 1404
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    sget v1, Lcom/powervision/condition/view/NationMapView;->SHIP_ROUTE_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const-string v1, "#3A75F2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1405
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1406
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 1408
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_3

    .line 1411
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1413
    :cond_3
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    iget-object p2, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public drawSmoothMarker()V
    .locals 5

    .line 1349
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    if-nez v0, :cond_0

    return-void

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1363
    :cond_2
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/powervision/condition/utils/SpatialRelationUtil;->calShortestDistancePoint(Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;)Landroid/util/Pair;

    move-result-object v1

    .line 1364
    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1370
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v1, v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->setPoints(Ljava/util/List;)V

    .line 1372
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v0, v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->setTotalDuration(I)V

    .line 1374
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->startSmoothMove()V

    .line 1375
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v0, v2}, Lcom/powervision/condition/widget/MovingPointOverlay;->setVisible(Z)V

    .line 1380
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->routePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public drawTriangle()V
    .locals 3

    .line 2245
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    new-instance v2, Lcom/powervision/condition/view/NationMapView$9;

    invoke-direct {v2, p0}, Lcom/powervision/condition/view/NationMapView$9;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void
.end method

.method public getAddress(Landroid/content/Context;DD)V
    .locals 15

    move-object v1, p0

    const-string v0, "\u7eac\u5ea6\uff1a"

    const-string v2, "\n"

    const-string v3, "NationMapView"

    const-string v4, "getAddress: "

    .line 2535
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    new-instance v5, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v10, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 2538
    :try_start_0
    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v5

    const-string v6, "\u4f4d\u7f6e"

    .line 2539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5f97\u5230\u4f4d\u7f6e\u5f53\u524d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u7ecf\u5ea6\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 2540
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Address;

    invoke-virtual {v9}, Landroid/location/Address;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Address;

    invoke-virtual {v9}, Landroid/location/Address;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u56fd\u5bb6\uff1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u57ce\u5e02\uff1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u540d\u79f0\uff1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u8857\u9053\uff1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2539
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    iget-object v0, v1, Lcom/powervision/condition/view/NationMapView;->mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    if-eqz v0, :cond_0

    .line 2551
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 2552
    iget-object v9, v1, Lcom/powervision/condition/view/NationMapView;->mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    invoke-virtual {v0, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-interface/range {v9 .. v14}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;->onRegeocodeSearched(Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    iget-object v4, v1, Lcom/powervision/condition/view/NationMapView;->mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    if-eqz v4, :cond_0

    const-string v5, ""

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 2560
    invoke-interface/range {v4 .. v9}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;->onRegeocodeSearched(Ljava/lang/String;DD)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCurrentPersonLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 1

    .line 2706
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentShipLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    return-object v0
.end method

.method public getFishMarker()Lcom/powervision/base/nationmap/interfaces/INationMarker;
    .locals 2

    .line 2854
    new-instance v0, Lcom/powervision/condition/widget/NationMarker;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    return-object v0
.end method

.method public getHomeMarker()Lcom/powervision/base/nationmap/interfaces/INationMarker;
    .locals 2

    .line 2858
    new-instance v0, Lcom/powervision/condition/widget/NationMarker;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    return-object v0
.end method

.method public getInterestMarker()Lcom/powervision/base/nationmap/interfaces/INationMarker;
    .locals 2

    .line 2850
    new-instance v0, Lcom/powervision/condition/widget/NationMarker;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    return-object v0
.end method

.method public getLatLngLinkedList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1982
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getLatLngs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;"
        }
    .end annotation

    .line 2715
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapListToNationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMarkerLinkedList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMarkerMap()Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/condition/widget/NationMarker;",
            ">;"
        }
    .end annotation

    .line 2723
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2725
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2726
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/powervision/condition/widget/NationMarker;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v4, v2}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNationLatLngLinkedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;"
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapListToNationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPolyMarkerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/condition/widget/NationMarker;",
            ">;"
        }
    .end annotation

    .line 2767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2768
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 2784
    new-instance v3, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v3, v2}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPolyMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    return-object v0
.end method

.method public getSmoothMarker()Lcom/powervision/base/nationmap/interfaces/INationMarker;
    .locals 2

    .line 2862
    new-instance v0, Lcom/powervision/condition/widget/NationMarker;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mMovingMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    return-object v0
.end method

.method public getSmoothMarkerLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1342
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    return-object v0
.end method

.method public goInterest(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2711
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initAirlinePlan()V
    .locals 2

    .line 1519
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/powervision/condition/view/NationMapView$5;

    invoke-direct {v1, p0}, Lcom/powervision/condition/view/NationMapView$5;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    return-void
.end method

.method public initGoogleMap(Landroid/content/Context;)V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 331
    :goto_0
    invoke-virtual {p0, p1}, Lcom/powervision/condition/view/NationMapView;->buildGoogleApiClient(Landroid/content/Context;)V

    .line 332
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 391
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 393
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 395
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 396
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 398
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 400
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 401
    invoke-virtual {p1, v1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 407
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getShipPositionView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 408
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mMovingMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 409
    new-instance v1, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v1, p1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mMovingNationMarker:Lcom/powervision/condition/widget/NationMarker;

    .line 410
    new-instance p1, Lcom/powervision/condition/widget/MovingPointOverlay;

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p1, v2, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/powervision/condition/widget/NationMarker;)V

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    .line 416
    invoke-virtual {p1, v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->setVisible(Z)V

    .line 428
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v0, 0x41980000    # 19.0f

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 429
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public initMap(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public initRect()V
    .locals 2

    .line 1765
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 1767
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 1768
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    const-string v0, "NationMapView"

    const-string v1, "initRect: null"

    .line 1770
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->onMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

    invoke-virtual {v0, v1}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    return-void
.end method

.method public initScanAreaDefaultRect()V
    .locals 3

    .line 1752
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 1753
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 1755
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    invoke-virtual {v0, v1}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    const-string v0, "NationMapView"

    const-string v1, "initScanAreaDefaultRect: null"

    .line 1756
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 1758
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 1759
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public isCanAddInterest()Z
    .locals 1

    .line 2833
    iget-boolean v0, p0, Lcom/powervision/condition/view/NationMapView;->mCanAddInterest:Z

    return v0
.end method

.method public isGoogleEnable()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/powervision/condition/view/NationMapView;->googleEnable:Z

    return v0
.end method

.method public isNormalMapType()Z
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

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

.method public isSafeAreaDisable()Z
    .locals 1

    .line 1902
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngA:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngB:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngC:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngD:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSatelliteMapType()Z
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

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

.method public latLngLinkedListAdd(DD)V
    .locals 2

    .line 1978
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public lineOpenClose()V
    .locals 2

    .line 1735
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polylines:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 1737
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1740
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1741
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v1, :cond_1

    .line 1742
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1743
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 1745
    :cond_1
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1746
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1747
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->points:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public onBordClickListener()V
    .locals 5

    .line 2415
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 2417
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 2418
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 1074
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput v0, p0, Lcom/powervision/condition/view/NationMapView;->lastBearing:F

    .line 1075
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnCameraChangeListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 1076
    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;->onCameraChange(F)V

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 7

    const-string p1, "NationMapView"

    const-string v0, "onConnected: "

    .line 469
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLocationAvailability(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 478
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/powervision/condition/utils/GaodePositionUtil;->gcj2Gps84(DD)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 514
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x1388

    .line 515
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 517
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 522
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string p1, "NationMapView"

    const-string v0, "onConnectionFailed: "

    .line 548
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string p1, "NationMapView"

    const-string v0, "onConnectionSuspended: "

    .line 543
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "MapViewBundleKey"

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 259
    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->checkGoogleMapService(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/condition/view/NationMapView;->googleEnable:Z

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 262
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mImageMapMask:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mImageMapMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->stopLocation()V

    const/4 v0, 0x0

    .line 1247
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    .line 1248
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    return-void
.end method

.method public onInterestDeleteAndEdit(ZDD)V
    .locals 1

    .line 2174
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2175
    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 2176
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/high16 p3, 0x3f000000    # 0.5f

    .line 2177
    invoke-virtual {p2, p3, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    const p3, 0x4479c000    # 999.0f

    .line 2178
    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    if-eqz p1, :cond_0

    .line 2181
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getInterestPositionView()Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2182
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 2184
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getFishView()Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2185
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 2188
    :goto_0
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_1

    .line 2189
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->clearRender()V

    .line 2198
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NationMapView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/powervision/condition/utils/GaodePositionUtil;->gcj2Gps84(DD)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/powervision/condition/utils/GaodePositionUtil;->gps2Gcj02(Landroid/content/Context;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 2510
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 2512
    iget-boolean p1, p0, Lcom/powervision/condition/view/NationMapView;->isFirstLocated:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2513
    iput-boolean p1, p0, Lcom/powervision/condition/view/NationMapView;->isFirstLocated:Z

    .line 2517
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 2518
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

    if-eqz v0, :cond_0

    .line 554
    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;->onMapClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    :cond_0
    return-void
.end method

.method public onMapClickDrawAirScan(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 2

    .line 1053
    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 1055
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 1056
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_0

    .line 1057
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->moreThan255Point()V

    :cond_0
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1064
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 1065
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1067
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->drawPolygon()V

    return-void
.end method

.method public onMapClickDrawAirline(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 3

    .line 993
    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 994
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 995
    invoke-static {p1, v0}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 998
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_0

    .line 999
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->moreThan1000m()V

    :cond_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 1006
    invoke-static {v1, p1}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_3

    .line 1010
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->lessThan5m()V

    :cond_3
    return-void

    .line 1016
    :cond_4
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_6

    .line 1018
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_5

    .line 1019
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->moreThan255Point()V

    :cond_5
    return-void

    .line 1024
    :cond_6
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1027
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz v0, :cond_7

    .line 1028
    invoke-interface {v0}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->clearRender()V

    .line 1032
    :cond_7
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 1038
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p1, "lzqWay"

    const-string v1, "\u70b9\u51fb\u589e\u52a0"

    .line 1039
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_8

    .line 1044
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1046
    :cond_8
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawPolylineOptions(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 1048
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 1049
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public onMapDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/powervision/condition/view/NationMapView;->isMapDestroy:Z

    .line 300
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8

    .line 567
    iget-boolean v0, p0, Lcom/powervision/condition/view/NationMapView;->mCanAddInterest:Z

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mAddInterestMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 572
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 575
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getInterestPositionView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 576
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 577
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mAddInterestMarker:Lcom/google/android/gms/maps/model/Marker;

    const-wide/16 v0, 0xc8

    .line 588
    invoke-static {v0, v1}, Lcom/powervision/base/utils/VibratorUtils;->vibrate(J)V

    .line 590
    new-instance v0, Lcom/powervision/condition/view/NationMapView$QueryThread;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/condition/view/NationMapView$QueryThread;-><init>(Lcom/powervision/condition/view/NationMapView;DD)V

    invoke-virtual {v0}, Lcom/powervision/condition/view/NationMapView$QueryThread;->start()V

    :cond_1
    return-void
.end method

.method public onMapPause()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 2450
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 2452
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mapLoadedListener:Lcom/powervision/opensource/onMapLoadedListener;

    if-eqz v0, :cond_0

    .line 2453
    invoke-interface {v0, p1}, Lcom/powervision/opensource/onMapLoadedListener;->onMapLoaded(Ljava/lang/Object;)V

    .line 2455
    :cond_0
    new-instance v0, Lcom/powervision/condition/view/NationMapView$10;

    invoke-direct {v0, p0}, Lcom/powervision/condition/view/NationMapView$10;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 2466
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/condition/view/NationMapView;->initGoogleMap(Landroid/content/Context;)V

    return-void
.end method

.method public onMapResume()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->checkGoogleMapService(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public onMapStart()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    return-void
.end method

.method public onMapStop()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    return-void
.end method

.method public onMapTouchAction(Landroid/view/MotionEvent;)V
    .locals 4

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "NationMapView"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/16 p1, 0xc

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    :cond_0
    const-string v0, "onMapTouchAction: move 1"

    .line 837
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchY:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectA:Lcom/google/android/gms/maps/model/LatLng;

    .line 839
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchY:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectB:Lcom/google/android/gms/maps/model/LatLng;

    .line 840
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectC:Lcom/google/android/gms/maps/model/LatLng;

    .line 841
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->rectD:Lcom/google/android/gms/maps/model/LatLng;

    .line 842
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 843
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectA:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectB:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectC:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectD:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectA:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->zoneLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_1

    .line 849
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 852
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->rectA:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->rectB:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->rectC:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->rectD:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/powervision/condition/view/NationMapView;->drawRectPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 854
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/powervision/condition/view/NationMapView;->drawSafeAreaPolygon(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polygon;

    goto :goto_0

    :cond_2
    const-string p1, "onMapTouchAction:ACTION_BUTTON_RELEASE null"

    .line 861
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 865
    :cond_3
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    .line 866
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 867
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 868
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    goto :goto_0

    .line 825
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchX:F

    .line 826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/condition/view/NationMapView;->mMapTouchY:F

    .line 827
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_5

    .line 828
    invoke-interface {p1}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->clearRender()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 3

    const-string v0, "NationMapView"

    const-string v1, "onMarkerClick: "

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;->onInterestMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;->onFishMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    goto :goto_0

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView;->mMovingMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    new-instance v2, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v2, p1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-interface {v0, v2}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;->onMarkerClick(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V

    :goto_0
    return v1
.end method

.method public onMarkerClickDrawAirScan(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 748
    :goto_0
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 750
    invoke-interface {p1}, Lcom/powervision/base/nationmap/interfaces/INationMarker;->getPosition()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 752
    iput v0, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    .line 753
    check-cast p1, Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {p1}, Lcom/powervision/condition/widget/NationMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 754
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_2

    .line 755
    iget v0, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    invoke-interface {p1, v0}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->deleteScanPointAction(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onMarkerClickDrawAirline(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 707
    :goto_0
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 709
    invoke-interface {p1}, Lcom/powervision/base/nationmap/interfaces/INationMarker;->getPosition()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 711
    iput v0, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    .line 712
    check-cast p1, Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {p1}, Lcom/powervision/condition/widget/NationMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 713
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    if-eqz p1, :cond_2

    .line 714
    iget v0, p0, Lcom/powervision/condition/view/NationMapView;->position:I

    invoke-interface {p1, v0}, Lcom/powervision/base/nationmap/listener/OnNationActionListener;->deleteAirlinePointAction(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerDragListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 1319
    new-instance v1, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v1, p1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-interface {v0, v1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;->onMarkerDrag(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V

    :cond_0
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerDragListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 1326
    new-instance v1, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v1, p1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-interface {v0, v1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;->onMarkerDragEnd(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V

    .line 1328
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/condition/view/NationMapView;->checkAirlinePoint(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->startMarkerLaLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_1
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1310
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->startMarkerLaLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 1311
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerDragListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 1312
    new-instance v1, Lcom/powervision/condition/widget/NationMarker;

    invoke-direct {v1, p1}, Lcom/powervision/condition/widget/NationMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    invoke-interface {v0, v1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;->onMarkerDragStart(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V

    :cond_0
    return-void
.end method

.method public onPolygonAreaSelect()V
    .locals 2

    const/4 v0, 0x1

    .line 1921
    invoke-virtual {p0, v0}, Lcom/powervision/condition/view/NationMapView;->setAllGesturesEnabled(Z)V

    const/4 v0, 0x0

    .line 1922
    invoke-virtual {p0, v0}, Lcom/powervision/condition/view/NationMapView;->setRotateGesturesEnabled(Z)V

    .line 1923
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    const-string v0, "NationMapView"

    const-string v1, "onPolygonAreaSelect: null"

    .line 1924
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    .line 1927
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/powervision/condition/view/NationMapView$7;

    invoke-direct {v1, p0}, Lcom/powervision/condition/view/NationMapView$7;-><init>(Lcom/powervision/condition/view/NationMapView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    return-void
.end method

.method public onPositionHistory(ZDD)V
    .locals 1

    .line 2202
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2203
    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 2204
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/high16 p3, 0x3f000000    # 0.5f

    .line 2205
    invoke-virtual {p2, p3, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    const p3, 0x4479c000    # 999.0f

    .line 2206
    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    if-eqz p1, :cond_0

    .line 2208
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getInterestPositionView()Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2209
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/powervision/condition/view/NationMapView;->getFishView()Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 2212
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 2216
    :goto_0
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public onRectangleAreaSelect()V
    .locals 2

    const/4 v0, 0x0

    .line 1906
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1907
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1908
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v1, :cond_0

    .line 1909
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1910
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1913
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1914
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onSaveMapInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MapViewBundleKey"

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserClickListener()V
    .locals 2

    .line 2433
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 2435
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 2436
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public removeInterestMarker()V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mAddInterestMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2169
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    return-void
.end method

.method public removeSafeView()V
    .locals 2

    .line 1576
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerA:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1578
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerB:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1579
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerC:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1580
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerD:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    const/4 v0, 0x0

    .line 1582
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngA:Lcom/google/android/gms/maps/model/LatLng;

    .line 1583
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngB:Lcom/google/android/gms/maps/model/LatLng;

    .line 1584
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngC:Lcom/google/android/gms/maps/model/LatLng;

    .line 1585
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->safeZonelatLngD:Lcom/google/android/gms/maps/model/LatLng;

    .line 1589
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_1

    .line 1590
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    :cond_1
    return-void
.end method

.method public resetAirlineMap()V
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1475
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1479
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public resetLineScheme()V
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1465
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public resetZoneScan()V
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 1457
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 1458
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 1459
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1460
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    return-void
.end method

.method public setCanAddInterest(Z)V
    .locals 0

    .line 2829
    iput-boolean p1, p0, Lcom/powervision/condition/view/NationMapView;->mCanAddInterest:Z

    return-void
.end method

.method public setCurrentShipLatLng(DD)V
    .locals 1

    .line 2700
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/powervision/condition/utils/GaodePositionUtil;->gps2Gcj02(Landroid/content/Context;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public setMapTouchListener()V
    .locals 2

    .line 2441
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 2442
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    const-string v0, "NationMapView"

    const-string v1, "setMapTouchListener: true"

    .line 2443
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mTouchableWrapper:Lcom/powervision/condition/utils/TouchableWrapper;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->onMapParentTouchListener:Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;

    invoke-virtual {v0, v1}, Lcom/powervision/condition/utils/TouchableWrapper;->setOnMapParentTouchListener(Lcom/powervision/condition/utils/TouchableWrapper$OnMapParentTouchListener;)V

    return-void
.end method

.method public setNormalMapType()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public final setOnCameraChangeListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnCameraChangeListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;

    return-void
.end method

.method public final setOnGeocodeSearchListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    return-void
.end method

.method public final setOnLocationChangedListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnLocationChangedListener;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnLocationChangedListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnLocationChangedListener;

    return-void
.end method

.method public final setOnMapClickListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

    return-void
.end method

.method public setOnMapLoadedListener(Lcom/powervision/opensource/onMapLoadedListener;)V
    .locals 0

    .line 2846
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mapLoadedListener:Lcom/powervision/opensource/onMapLoadedListener;

    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapLongClickListener;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnMapLongClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapLongClickListener;

    return-void
.end method

.method public final setOnMapTouchListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerDragListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerDragListener;

    return-void
.end method

.method public final setOnMarkerTypeClickListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    return-void
.end method

.method public final setOnNationActionListener(Lcom/powervision/base/nationmap/listener/OnNationActionListener;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->mOnNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    return-void
.end method

.method public setSatelliteMapType()V
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public shipReachedPoint(I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2224
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 2228
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2229
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;IZ)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 2230
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public ship_interest_list()V
    .locals 2

    .line 2380
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->interestRootMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2381
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2383
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->fishMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 2384
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentPersonLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_2

    .line 2388
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 2389
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    return-void
.end method

.method public ship_map_direction_disable()V
    .locals 2

    .line 2374
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2375
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 2376
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public ship_map_direction_enable()V
    .locals 2

    .line 2367
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 2368
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->uiSettings:Lcom/google/android/gms/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public ship_map_remember_route()V
    .locals 2

    .line 2394
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2395
    invoke-virtual {v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->setVisible(Z)V

    .line 2396
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->startSmoothMove()V

    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 1235
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public updateAttitude(F)V
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mMovingPointOverlay:Lcom/powervision/condition/widget/MovingPointOverlay;

    if-eqz v0, :cond_0

    .line 1596
    new-instance v0, Lcom/powervision/condition/view/NationMapView$6;

    invoke-direct {v0, p0, p1}, Lcom/powervision/condition/view/NationMapView$6;-><init>(Lcom/powervision/condition/view/NationMapView;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/condition/view/NationMapView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateHomePosition(DD)V
    .locals 1

    .line 2220
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/powervision/condition/utils/GaodePositionUtil;->gps2Gcj02(Landroid/content/Context;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView;->homeLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public updateMarker()V
    .locals 5

    const/4 v0, 0x0

    .line 1568
    :goto_0
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->markerLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1570
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/powervision/condition/view/NationMapView;->getRoundViewByPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/powervision/condition/utils/MapUtils;->fromView(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    int-to-float v0, v0

    .line 1571
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateReturnHomeMarker()V
    .locals 3

    .line 1845
    iget-boolean v0, p0, Lcom/powervision/condition/view/NationMapView;->isMapDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1853
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1855
    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1856
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->homeLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v1, 0x0

    .line 1857
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1858
    invoke-virtual {p0}, Lcom/powervision/condition/view/NationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/airmap/R$mipmap;->pvw4_ic_back_home:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1859
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method

.method public updateReturnLine()V
    .locals 3

    .line 1863
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    const/4 v0, 0x0

    .line 1865
    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 1868
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mCurrentShipLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView;->homeLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    .line 1873
    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v2, "#3A75F2"

    .line 1874
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1875
    sget-object v2, Lcom/powervision/condition/view/NationMapView;->PATTERN_POLYGON_ALPHA:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1877
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1878
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->aMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method public updateReturnState()V
    .locals 2

    .line 1834
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1836
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1840
    iput-object v1, p0, Lcom/powervision/condition/view/NationMapView;->mBackPolyline:Lcom/google/android/gms/maps/model/Polyline;

    :cond_1
    return-void
.end method

.method public updateShipPositionChanged()V
    .locals 0

    return-void
.end method
