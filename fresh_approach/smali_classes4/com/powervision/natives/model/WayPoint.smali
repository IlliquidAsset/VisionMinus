.class public Lcom/powervision/natives/model/WayPoint;
.super Ljava/lang/Object;
.source "WayPoint.java"


# instance fields
.field public lat:F

.field public lon:F

.field public seq:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFS)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/powervision/natives/model/WayPoint;->lat:F

    .line 14
    iput p2, p0, Lcom/powervision/natives/model/WayPoint;->lon:F

    .line 15
    iput-short p3, p0, Lcom/powervision/natives/model/WayPoint;->seq:S

    return-void
.end method


# virtual methods
.method public getLat()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/powervision/natives/model/WayPoint;->lat:F

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/powervision/natives/model/WayPoint;->lon:F

    return v0
.end method

.method public getSeq()S
    .locals 1

    .line 39
    iget-short v0, p0, Lcom/powervision/natives/model/WayPoint;->seq:S

    return v0
.end method

.method public setLat(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/powervision/natives/model/WayPoint;->lat:F

    return-void
.end method

.method public setLon(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/powervision/natives/model/WayPoint;->lon:F

    return-void
.end method

.method public setSeq(S)V
    .locals 0

    .line 43
    iput-short p1, p0, Lcom/powervision/natives/model/WayPoint;->seq:S

    return-void
.end method
