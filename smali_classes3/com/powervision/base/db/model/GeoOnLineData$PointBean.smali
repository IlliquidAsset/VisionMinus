.class public Lcom/powervision/base/db/model/GeoOnLineData$PointBean;
.super Ljava/lang/Object;
.source "GeoOnLineData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/db/model/GeoOnLineData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;
    }
.end annotation


# instance fields
.field private spatialReference:Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;

.field private type:Ljava/lang/String;

.field private x:Ljava/lang/Double;

.field private y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpatialReference()Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->spatialReference:Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->x:Ljava/lang/Double;

    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->y:Ljava/lang/Double;

    return-object v0
.end method

.method public setSpatialReference(Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->spatialReference:Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setX(Ljava/lang/Double;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->x:Ljava/lang/Double;

    return-void
.end method

.method public setY(Ljava/lang/Double;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean;->y:Ljava/lang/Double;

    return-void
.end method
