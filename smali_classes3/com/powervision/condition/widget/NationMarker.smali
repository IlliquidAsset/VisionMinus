.class public Lcom/powervision/condition/widget/NationMarker;
.super Ljava/lang/Object;
.source "NationMarker.java"

# interfaces
.implements Lcom/powervision/base/nationmap/interfaces/INationMarker;


# instance fields
.field private marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method


# virtual methods
.method public getDisplayLevel()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getPosition()Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/powervision/base/nationmap/model/NationLatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    return-object v1
.end method

.method public getRotateAngle()F
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getRotation()F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isVisible()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    return-void
.end method

.method public setGeoPoint(Lcom/powervision/base/nationmap/model/IPoint;)V
    .locals 0

    return-void
.end method

.method public setId()V
    .locals 0

    return-void
.end method

.method public setPosition(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    iget-wide v4, p1, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/powervision/condition/widget/NationMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    return-void
.end method
