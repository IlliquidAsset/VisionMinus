.class public Lcom/powervision/aircraft/lapse/data/PositionInfo;
.super Ljava/lang/Object;
.source "PositionInfo.java"


# instance fields
.field private lat:I

.field private lon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/PositionInfo;->lat:I

    return v0
.end method

.method public getLon()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/PositionInfo;->lon:I

    return v0
.end method

.method public setLat(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/PositionInfo;->lat:I

    return-void
.end method

.method public setLon(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/PositionInfo;->lon:I

    return-void
.end method
