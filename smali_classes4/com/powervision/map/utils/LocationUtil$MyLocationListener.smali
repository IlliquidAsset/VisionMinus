.class Lcom/powervision/map/utils/LocationUtil$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/utils/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLocationListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/map/utils/LocationUtil$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/map/utils/LocationUtil$MyLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/powervision/map/utils/LocationUtil;->access$100()Lcom/powervision/map/utils/LocationUtil$ILocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/powervision/map/utils/LocationUtil;->access$100()Lcom/powervision/map/utils/LocationUtil$ILocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/map/utils/LocationUtil$ILocationListener;->onSuccessLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
