.class public Lcom/powervision/aircraft/lapse/data/AngleInfo;
.super Ljava/lang/Object;
.source "AngleInfo.java"


# instance fields
.field private pitch:F

.field private roll:F

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPitch()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->pitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->roll:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->yaw:F

    return v0
.end method

.method public setPitch(F)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->pitch:F

    return-void
.end method

.method public setRoll(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->roll:F

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->yaw:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AngleInfo{pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/lapse/data/AngleInfo;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
