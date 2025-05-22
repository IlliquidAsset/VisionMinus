.class public Lcom/powervision/base/model/LatLong;
.super Ljava/lang/Object;
.source "LatLong.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/powervision/base/model/LatLong;->latitude:D

    .line 13
    iput-wide p3, p0, Lcom/powervision/base/model/LatLong;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/powervision/base/model/LatLong;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/powervision/base/model/LatLong;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/powervision/base/model/LatLong;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/powervision/base/model/LatLong;->longitude:D

    return-void
.end method
