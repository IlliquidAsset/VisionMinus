.class public Lcom/powervision/base/nationmap/utils/MelkmanPoint;
.super Ljava/lang/Object;
.source "MelkmanPoint.java"


# instance fields
.field private arCos:D

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->x:D

    .line 18
    iput-wide p3, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->y:D

    return-void
.end method


# virtual methods
.method public getArCos()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->arCos:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->y:D

    return-wide v0
.end method

.method public setArCos(D)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->arCos:D

    return-void
.end method

.method public setX(D)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
