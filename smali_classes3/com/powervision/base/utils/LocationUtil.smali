.class public Lcom/powervision/base/utils/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/LocationUtil$ILocationListener;,
        Lcom/powervision/base/utils/LocationUtil$MyLocationListener;
    }
.end annotation


# static fields
.field private static final METER_POSITION:F = 0.0f

.field private static final REFRESH_TIME:J = 0x3e8L

.field private static listener:Landroid/location/LocationListener;

.field private static mLocationListener:Lcom/powervision/base/utils/LocationUtil$ILocationListener;


# instance fields
.field mManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/powervision/base/utils/LocationUtil$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/LocationUtil$MyLocationListener;-><init>(Lcom/powervision/base/utils/LocationUtil$1;)V

    sput-object v0, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/powervision/base/utils/LocationUtil;->mManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/base/utils/LocationUtil$ILocationListener;
    .locals 1

    .line 18
    sget-object v0, Lcom/powervision/base/utils/LocationUtil;->mLocationListener:Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    return-object v0
.end method

.method private getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    const-string v0, "location"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    return-object p1
.end method

.method public static isGpsEnabled()Z
    .locals 2

    .line 162
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 163
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "network"

    .line 173
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static openGpsSettings()V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addLocationListener(Landroid/content/Context;Ljava/lang/String;JFLcom/powervision/base/utils/LocationUtil$ILocationListener;)V
    .locals 7

    if-eqz p6, :cond_0

    .line 119
    sput-object p6, Lcom/powervision/base/utils/LocationUtil;->mLocationListener:Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    .line 121
    :cond_0
    sget-object p6, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    if-nez p6, :cond_1

    .line 122
    new-instance p6, Lcom/powervision/base/utils/LocationUtil$MyLocationListener;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/powervision/base/utils/LocationUtil$MyLocationListener;-><init>(Lcom/powervision/base/utils/LocationUtil$1;)V

    sput-object p6, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 125
    sget-object p1, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 126
    sget-object v6, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public addLocationListener(Landroid/content/Context;Ljava/lang/String;Lcom/powervision/base/utils/LocationUtil$ILocationListener;)V
    .locals 7

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/powervision/base/utils/LocationUtil;->addLocationListener(Landroid/content/Context;Ljava/lang/String;JFLcom/powervision/base/utils/LocationUtil$ILocationListener;)V

    return-void
.end method

.method public getBestLocation(Landroid/content/Context;Landroid/location/Criteria;)Landroid/location/Location;
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Landroid/location/Criteria;

    invoke-direct {p2}, Landroid/location/Criteria;-><init>()V

    :cond_0
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getNetWorkLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getGPSLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "gps"

    .line 60
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
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

    .line 73
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "network"

    .line 75
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
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

    .line 136
    sget-object v0, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    .line 139
    sget-object v0, Lcom/powervision/base/utils/LocationUtil;->listener:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
