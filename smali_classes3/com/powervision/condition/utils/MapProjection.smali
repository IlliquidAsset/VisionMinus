.class public Lcom/powervision/condition/utils/MapProjection;
.super Ljava/lang/Object;
.source "MapProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geo2LonLat(IILcom/powervision/condition/utils/DPoint;)V
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x14

    .line 22
    invoke-static {v0, v1, p0, p1, v2}, Lcom/powervision/condition/utils/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/powervision/condition/utils/DPoint;

    move-result-object p0

    .line 23
    iget-wide v0, p0, Lcom/powervision/condition/utils/DPoint;->x:D

    iput-wide v0, p2, Lcom/powervision/condition/utils/DPoint;->x:D

    .line 24
    iget-wide v0, p0, Lcom/powervision/condition/utils/DPoint;->y:D

    iput-wide v0, p2, Lcom/powervision/condition/utils/DPoint;->y:D

    .line 25
    invoke-virtual {p0}, Lcom/powervision/condition/utils/DPoint;->recycle()V

    return-void
.end method

.method public static lonlat2Geo(DDLcom/powervision/base/nationmap/model/IPoint;)V
    .locals 1

    const/16 v0, 0x14

    .line 16
    invoke-static {p2, p3, p0, p1, v0}, Lcom/powervision/condition/utils/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p0

    .line 17
    iget p1, p0, Landroid/graphics/Point;->x:I

    iput p1, p4, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    .line 18
    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p4, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    return-void
.end method
