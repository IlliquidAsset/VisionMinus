.class public Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;
.super Ljava/lang/Object;
.source "HeightSpeedInfo.java"


# instance fields
.field private height:F

.field private vps:F

.field private xSpeed:F

.field private ySpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->height:F

    return v0
.end method

.method public getVps()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->vps:F

    return v0
.end method

.method public getxSpeed()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->xSpeed:F

    return v0
.end method

.method public getySpeed()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->ySpeed:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->height:F

    return-void
.end method

.method public setVps(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->vps:F

    return-void
.end method

.method public setxSpeed(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->xSpeed:F

    return-void
.end method

.method public setySpeed(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->ySpeed:F

    return-void
.end method
