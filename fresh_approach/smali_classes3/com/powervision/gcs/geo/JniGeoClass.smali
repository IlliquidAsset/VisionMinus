.class public Lcom/powervision/gcs/geo/JniGeoClass;
.super Ljava/lang/Object;
.source "JniGeoClass.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addANewDataGeo(DDDJJ)V
.end method

.method public static native changeRange(D)V
.end method

.method public static native checkX(J)V
.end method

.method public static native checkY(J)V
.end method

.method public static deleteAllContours()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->deleteAllContours()V

    return-void
.end method

.method public static deleteContours([I)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->deletePolygon([I)V

    return-void
.end method

.method public static native doMath(J)V
.end method

.method public static drawAll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->drawAll(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static drawClomns(DDDD)V
    .locals 0

    return-void
.end method

.method public static drawContours(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->draw(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static drawLines(DDDD)V
    .locals 10

    .line 53
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v1 .. v9}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->drawLines(DDDD)V

    return-void
.end method

.method public static drawNewDataArea(DDDD)V
    .locals 0

    return-void
.end method

.method public static drawNewPoint(DD)V
    .locals 2

    const-string v0, "lzqGeo_"

    const-string v1, "java \u6536\u5230 drawNewPoint"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->getJniCallBack()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;->drawNewPoint(DD)V

    return-void
.end method

.method public static native free(J)V
.end method

.method public static native getRanges(J)[D
.end method

.method public static native init(DJ)V
.end method

.method public static native initChangedData(J)V
.end method

.method public static native testCallBack(J)V
.end method

.method public static native testJJJ()V
.end method
