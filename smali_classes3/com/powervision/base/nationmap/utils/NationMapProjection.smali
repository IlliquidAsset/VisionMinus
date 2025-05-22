.class public Lcom/powervision/base/nationmap/utils/NationMapProjection;
.super Ljava/lang/Object;
.source "NationMapProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geo2LonLat(IILcom/powervision/base/nationmap/model/DPoint;)V
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x14

    .line 23
    invoke-static {v0, v1, p0, p1, v2}, Lcom/powervision/base/nationmap/utils/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/powervision/base/nationmap/model/DPoint;

    move-result-object p0

    .line 24
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/DPoint;->x:D

    iput-wide v0, p2, Lcom/powervision/base/nationmap/model/DPoint;->x:D

    .line 25
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/DPoint;->y:D

    iput-wide v0, p2, Lcom/powervision/base/nationmap/model/DPoint;->y:D

    .line 26
    invoke-virtual {p0}, Lcom/powervision/base/nationmap/model/DPoint;->recycle()V

    return-void
.end method

.method public static lonlat2Geo(DDLcom/powervision/base/nationmap/model/IPoint;)V
    .locals 1

    const/16 v0, 0x14

    .line 17
    invoke-static {p2, p3, p0, p1, v0}, Lcom/powervision/base/nationmap/utils/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p0

    .line 18
    iget p1, p0, Landroid/graphics/Point;->x:I

    iput p1, p4, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    .line 19
    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p4, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    return-void
.end method
