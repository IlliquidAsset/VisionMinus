.class Lcom/powervision/gcs/utils/LocationUtil$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLocationListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/utils/LocationUtil$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/gcs/utils/LocationUtil$MyLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/powervision/gcs/utils/LocationUtil;->access$100()Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/powervision/gcs/utils/LocationUtil;->access$100()Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;->onSuccessLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "lzqlocate"

    const-string v0, "onProviderDisabled //\u4e0d\u53ef\u7528\u76d1\u542c"

    .line 46
    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/powervision/gcs/utils/LocationUtil;->access$100()Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/powervision/gcs/utils/LocationUtil;->access$100()Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/utils/LocationUtil$ILocationListener;->onProviderDisabled()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "lzqlocate"

    const-string v0, "onProviderEnabled //\u53ef\u7528\u76d1\u542c"

    .line 41
    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
