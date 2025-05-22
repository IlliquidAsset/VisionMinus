.class public Lcom/powervision/gcs/view/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/gcs/view/Point;->x:F

    .line 13
    iput p2, p0, Lcom/powervision/gcs/view/Point;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/powervision/gcs/view/Point;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/powervision/gcs/view/Point;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/powervision/gcs/view/Point;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/view/Point;->y:F

    return-void
.end method
