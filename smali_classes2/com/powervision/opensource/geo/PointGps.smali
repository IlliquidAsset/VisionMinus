.class public Lcom/powervision/opensource/geo/PointGps;
.super Ljava/lang/Object;
.source "PointGps.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/powervision/opensource/geo/PointGps;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/powervision/opensource/geo/PointGps;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/powervision/opensource/geo/PointGps;->z:D

    return-wide v0
.end method

.method public setX(D)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/powervision/opensource/geo/PointGps;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/powervision/opensource/geo/PointGps;->y:D

    return-void
.end method

.method public setZ(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/powervision/opensource/geo/PointGps;->z:D

    return-void
.end method
