.class public Lcom/powervision/gcs/ui/aty/ship/ListLatLon;
.super Ljava/lang/Object;
.source "ListLatLon.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/powervision/gcs/ui/aty/ship/ListLatLon;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/powervision/gcs/ui/aty/ship/ListLatLon;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/powervision/gcs/ui/aty/ship/ListLatLon;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/powervision/gcs/ui/aty/ship/ListLatLon;->longitude:D

    return-void
.end method
