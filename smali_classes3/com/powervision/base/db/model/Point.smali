.class public Lcom/powervision/base/db/model/Point;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/db/model/Point$Reference;
    }
.end annotation


# instance fields
.field private spatialReference:Lcom/powervision/base/db/model/Point$Reference;

.field private type:Ljava/lang/String;

.field private x:Ljava/lang/Double;

.field private y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpatialReference()Lcom/powervision/base/db/model/Point$Reference;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/powervision/base/db/model/Point;->spatialReference:Lcom/powervision/base/db/model/Point$Reference;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/base/db/model/Point;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/base/db/model/Point;->x:Ljava/lang/Double;

    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/base/db/model/Point;->y:Ljava/lang/Double;

    return-object v0
.end method

.method public setSpatialReference(Lcom/powervision/base/db/model/Point$Reference;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/base/db/model/Point;->spatialReference:Lcom/powervision/base/db/model/Point$Reference;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/base/db/model/Point;->type:Ljava/lang/String;

    return-void
.end method

.method public setX(Ljava/lang/Double;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/base/db/model/Point;->x:Ljava/lang/Double;

    return-void
.end method

.method public setY(Ljava/lang/Double;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/base/db/model/Point;->y:Ljava/lang/Double;

    return-void
.end method
