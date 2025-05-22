.class public Lcom/powervision/natives/param/WayPointGPS;
.super Ljava/lang/Object;
.source "WayPointGPS.java"


# instance fields
.field lat:D

.field lon:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/powervision/natives/param/WayPointGPS;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/powervision/natives/param/WayPointGPS;->lon:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/powervision/natives/param/WayPointGPS;->lat:D

    return-void
.end method

.method public setLon(D)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/powervision/natives/param/WayPointGPS;->lon:D

    return-void
.end method
