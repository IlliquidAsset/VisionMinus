.class Lcom/powervision/base/utils/LocationUtil$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLocationListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/utils/LocationUtil$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/utils/LocationUtil$MyLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/powervision/base/utils/LocationUtil;->access$100()Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/powervision/base/utils/LocationUtil;->access$100()Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/base/utils/LocationUtil$ILocationListener;->onSuccessLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-static {}, Lcom/powervision/base/utils/LocationUtil;->access$100()Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Lcom/powervision/base/utils/LocationUtil;->access$100()Lcom/powervision/base/utils/LocationUtil$ILocationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/base/utils/LocationUtil$ILocationListener;->onProviderDisabled()V

    :cond_0
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
