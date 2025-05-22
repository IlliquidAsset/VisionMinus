.class public Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;
.super Ljava/lang/Object;
.source "GeoOnLineData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/db/model/GeoOnLineData$PointBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpatialReferenceBean"
.end annotation


# instance fields
.field private wkid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWkid()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;->wkid:I

    return v0
.end method

.method public setWkid(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/powervision/base/db/model/GeoOnLineData$PointBean$SpatialReferenceBean;->wkid:I

    return-void
.end method
