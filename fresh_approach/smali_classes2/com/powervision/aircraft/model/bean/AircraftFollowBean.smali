.class public Lcom/powervision/aircraft/model/bean/AircraftFollowBean;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "AircraftFollowBean.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChild2;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private h:F

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getH()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->h:F

    return v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getW()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->y:F

    return v0
.end method

.method public setH(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->h:F

    return-void
.end method

.method public setW(F)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->w:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/aircraft/model/bean/AircraftFollowBean;->y:F

    return-void
.end method
