.class public interface abstract Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;
.super Ljava/lang/Object;
.source "JniTestGeoCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JniCallback"
.end annotation


# virtual methods
.method public abstract deleteAllContours()V
.end method

.method public abstract deletePolygon([I)V
.end method

.method public abstract draw(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract drawAll(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract drawClomns(DDDD)V
.end method

.method public abstract drawLines(DDDD)V
.end method

.method public abstract drawNewDataArea(DDDD)V
.end method

.method public abstract drawNewPoint(DD)V
.end method
