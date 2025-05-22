.class public Lcom/powervision/condition/geo/FishPointCenter;
.super Lcom/powervision/opensource/geo/CenterPoint;
.source "FishPointCenter.java"


# instance fields
.field private marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/opensource/geo/CenterPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTheCenter(DD)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/powervision/condition/geo/FishPointCenter;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public getMarker()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/condition/geo/FishPointCenter;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public removeThisCircle()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/condition/geo/FishPointCenter;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    return-void
.end method

.method public setMarker(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iput-object p1, p0, Lcom/powervision/condition/geo/FishPointCenter;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method
