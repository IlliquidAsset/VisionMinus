.class Lcom/powervision/location/MapLocationManager$3;
.super Ljava/lang/Object;
.source "MapLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/location/MapLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/location/MapLocationManager;


# direct methods
.method constructor <init>(Lcom/powervision/location/MapLocationManager;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/location/MapLocationManager$3;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager$3;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-static {v0}, Lcom/powervision/location/MapLocationManager;->access$100(Lcom/powervision/location/MapLocationManager;)Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/powervision/location/MapLocationManager$3;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-static {v0}, Lcom/powervision/location/MapLocationManager;->access$100(Lcom/powervision/location/MapLocationManager;)Lcom/powervision/base/nationmap/listener/OnNationLocationListener;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/nationmap/model/NationLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/powervision/base/nationmap/model/NationLocation;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/powervision/base/nationmap/listener/OnNationLocationListener;->onLocationChanged(Lcom/powervision/base/nationmap/model/NationLocation;)V

    .line 108
    :cond_0
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/powervision/location/MapLocationManager$3;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-static {v0}, Lcom/powervision/location/MapLocationManager;->access$200(Lcom/powervision/location/MapLocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/location/MapLocationManager$3;->this$0:Lcom/powervision/location/MapLocationManager;

    invoke-static {v1}, Lcom/powervision/location/MapLocationManager;->access$300(Lcom/powervision/location/MapLocationManager;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method
