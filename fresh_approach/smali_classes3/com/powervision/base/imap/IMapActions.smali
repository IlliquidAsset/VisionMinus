.class public interface abstract Lcom/powervision/base/imap/IMapActions;
.super Ljava/lang/Object;
.source "IMapActions.java"


# virtual methods
.method public abstract addAirMarker()V
.end method

.method public abstract addHomeMarkLocation(DD)V
.end method

.method public abstract addReturnPoint(II)V
.end method

.method public abstract addUserOrDeviceMarkerLocation(DDIF)V
.end method

.method public abstract checkAndDrawDirectLine()V
.end method

.method public abstract destroyLocation()V
.end method

.method public abstract drawAirCraftMarkerAndLines(II)V
.end method

.method public abstract drawFindAircraftMarker(Ljava/lang/String;DD)V
.end method

.method public abstract drawLineEnable(Z)V
.end method

.method public abstract drawMapLines(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V
.end method

.method public abstract drawNewerMode(II)V
.end method

.method public abstract drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V
.end method

.method public abstract getMapScreenShot(Ljava/lang/Object;)V
.end method

.method public abstract inGeoArea(II)Z
.end method

.method public abstract initMap(Landroid/os/Bundle;Z)V
.end method

.method public abstract isMapTypeNormal()Z
.end method

.method public abstract moveTargetLocation(IDD)V
.end method

.method public abstract moveToCenter(I)V
.end method

.method public abstract onMapDestroy()V
.end method

.method public abstract onMapPause()V
.end method

.method public abstract onMapResume()V
.end method

.method public abstract onMapSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract removeHomePoint()V
.end method

.method public abstract removeNewerMode()V
.end method

.method public abstract requestPermission()V
.end method

.method public abstract setAirAlwaysCenter(Z)V
.end method

.method public abstract setAirRotateAngle(F)V
.end method

.method public abstract setFlightLog()V
.end method

.method public abstract setListener()V
.end method

.method public abstract setMapLock(Z)V
.end method

.method public abstract setMapType(Z)V
.end method

.method public abstract setMyLocationChangeListener(Lcom/powervision/base/imap/MyLocationChangeListener;)V
.end method

.method public abstract setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V
.end method

.method public abstract setOnDistanceListener(Lcom/powervision/base/imap/DistanceListener;)V
.end method

.method public abstract startLocation()V
.end method

.method public abstract stopLocation()V
.end method

.method public abstract updateLogMarker(DDDDDDD)V
.end method
