.class public Lcom/powervision/map/utils/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/utils/LocationUtil$ILocationListener;,
        Lcom/powervision/map/utils/LocationUtil$MyLocationListener;
    }
.end annotation


# static fields
.field private static final METER_POSITION:F = 0.0f

.field private static final REFRESH_TIME:J = 0x3e8L

.field private static listener:Landroid/location/LocationListener;

.field private static mLocationListener:Lcom/powervision/map/utils/LocationUtil$ILocationListener;


# instance fields
.field mManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/powervision/map/utils/LocationUtil$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/map/utils/LocationUtil$MyLocationListener;-><init>(Lcom/powervision/map/utils/LocationUtil$1;)V

    sput-object v0, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/powervision/map/utils/LocationUtil;->mManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/map/utils/LocationUtil$ILocationListener;
    .locals 1

    .line 15
    sget-object v0, Lcom/powervision/map/utils/LocationUtil;->mLocationListener:Lcom/powervision/map/utils/LocationUtil$ILocationListener;

    return-object v0
.end method

.method private getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    const-string v0, "location"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    return-object p1
.end method


# virtual methods
.method public addLocationListener(Landroid/content/Context;Ljava/lang/String;JFLcom/powervision/map/utils/LocationUtil$ILocationListener;)V
    .locals 7

    if-eqz p6, :cond_0

    .line 112
    sput-object p6, Lcom/powervision/map/utils/LocationUtil;->mLocationListener:Lcom/powervision/map/utils/LocationUtil$ILocationListener;

    .line 114
    :cond_0
    sget-object p6, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    if-nez p6, :cond_1

    .line 115
    new-instance p6, Lcom/powervision/map/utils/LocationUtil$MyLocationListener;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/powervision/map/utils/LocationUtil$MyLocationListener;-><init>(Lcom/powervision/map/utils/LocationUtil$1;)V

    sput-object p6, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 118
    sget-object p1, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 119
    sget-object v6, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public addLocationListener(Landroid/content/Context;Ljava/lang/String;Lcom/powervision/map/utils/LocationUtil$ILocationListener;)V
    .locals 7

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/powervision/map/utils/LocationUtil;->addLocationListener(Landroid/content/Context;Ljava/lang/String;JFLcom/powervision/map/utils/LocationUtil$ILocationListener;)V

    return-void
.end method

.method public getBestLocation(Landroid/content/Context;Landroid/location/Criteria;)Landroid/location/Location;
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez p2, :cond_0

    .line 83
    new-instance p2, Landroid/location/Criteria;

    invoke-direct {p2}, Landroid/location/Criteria;-><init>()V

    :cond_0
    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getNetWorkLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getGPSLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "gps"

    .line 53
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getNetWorkLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "network"

    .line 68
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public unRegisterListener(Landroid/content/Context;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    .line 131
    sget-object v0, Lcom/powervision/map/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
