.class Lcom/powervision/airmap/mapview/AirMapView$2;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/airmap/mapview/AirMapView;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/airmap/mapview/AirMapView;


# direct methods
.method constructor <init>(Lcom/powervision/airmap/mapview/AirMapView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/powervision/airmap/mapview/AirMapView$2;->this$0:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView$2;->this$0:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-static {v0}, Lcom/powervision/airmap/mapview/AirMapView;->access$000(Lcom/powervision/airmap/mapview/AirMapView;)Lcom/powervision/base/imap/OnAirMapClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/powervision/airmap/mapview/AirMapView$2;->this$0:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-static {v0}, Lcom/powervision/airmap/mapview/AirMapView;->access$000(Lcom/powervision/airmap/mapview/AirMapView;)Lcom/powervision/base/imap/OnAirMapClickListener;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/powervision/base/imap/OnAirMapClickListener;->onAirMapClick(DD)V

    :cond_0
    return-void
.end method
