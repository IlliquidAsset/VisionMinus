.class public Lcom/powervision/location/MapLocationManager;
.super Ljava/lang/Object;
.source "MapLocationManager.java"


# instance fields
.field private connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private locationListener:Lcom/google/android/gms/location/LocationListener;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mOnNationLocationListener:Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

.field private onConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/powervision/location/MapLocationManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/location/MapLocationManager$1;-><init>(Lcom/powervision/location/MapLocationManager;)V

    iput-object v0, p0, Lcom/powervision/location/MapLocationManager;->connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 95
    new-instance v0, Lcom/powervision/location/MapLocationManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/location/MapLocationManager$2;-><init>(Lcom/powervision/location/MapLocationManager;)V

    iput-object v0, p0, Lcom/powervision/location/MapLocationManager;->onConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 102
    new-instance v0, Lcom/powervision/location/MapLocationManager$3;

    invoke-direct {v0, p0}, Lcom/powervision/location/MapLocationManager$3;-><init>(Lcom/powervision/location/MapLocationManager;)V

    iput-object v0, p0, Lcom/powervision/location/MapLocationManager;->locationListener:Lcom/google/android/gms/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/location/MapLocationManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/powervision/location/MapLocationManager;->onMapConnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/location/MapLocationManager;)Lcom/powervision/base/nationmap/listener/OnNationLocationListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/location/MapLocationManager;->mOnNationLocationListener:Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/location/MapLocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/location/MapLocationManager;)Lcom/google/android/gms/location/LocationListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/location/MapLocationManager;->locationListener:Lcom/google/android/gms/location/LocationListener;

    return-object p0
.end method

.method private onMapConnect()V
    .locals 7

    .line 66
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/powervision/location/MapLocationManager;->mOnNationLocationListener:Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

    if-eqz v1, :cond_0

    .line 73
    new-instance v2, Lcom/powervision/base/nationmap/model/NationLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/powervision/base/nationmap/model/NationLocation;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/powervision/base/nationmap/listener/OnNationLocationListener;->onLocationChanged(Lcom/powervision/base/nationmap/model/NationLocation;)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/location/MapLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 78
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 79
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/powervision/location/MapLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lcom/powervision/location/MapLocationManager;->locationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method


# virtual methods
.method protected declared-synchronized buildGoogleApiClient(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/powervision/location/MapLocationManager;->connectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/location/MapLocationManager;->onConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initMap(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/powervision/location/MapLocationManager;->buildGoogleApiClient(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/powervision/location/MapLocationManager;->initMap(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/powervision/location/MapLocationManager;->stopLocation()V

    return-void
.end method

.method public setOnNationLocationListener(Lcom/powervision/base/nationmap/listener/OnNationLocationListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/location/MapLocationManager;->mOnNationLocationListener:Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

    return-void
.end method

.method public startLocation()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method public stopLocation()V
    .locals 3

    .line 56
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/powervision/location/MapLocationManager;->locationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 57
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method
