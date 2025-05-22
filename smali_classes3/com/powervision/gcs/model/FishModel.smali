.class public Lcom/powervision/gcs/model/FishModel;
.super Ljava/lang/Object;
.source "FishModel.java"


# instance fields
.field deep:F

.field type:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/powervision/gcs/model/FishModel;->type:I

    .line 41
    iput p2, p0, Lcom/powervision/gcs/model/FishModel;->x:F

    .line 42
    iput p3, p0, Lcom/powervision/gcs/model/FishModel;->deep:F

    return-void
.end method


# virtual methods
.method public getDeep()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/powervision/gcs/model/FishModel;->deep:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/powervision/gcs/model/FishModel;->type:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/powervision/gcs/model/FishModel;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/powervision/gcs/model/FishModel;->y:F

    return v0
.end method

.method public setDeep(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/powervision/gcs/model/FishModel;->deep:F

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/gcs/model/FishModel;->type:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/powervision/gcs/model/FishModel;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/powervision/gcs/model/FishModel;->y:F

    return-void
.end method
