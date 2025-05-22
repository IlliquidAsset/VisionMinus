.class public interface abstract Lcom/powervision/aircraft/model/IAircraftModel;
.super Ljava/lang/Object;
.source "IAircraftModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract getAircraftBattery()I
.end method

.method public abstract getBottomMenuValue()V
.end method

.method public abstract getCompareData(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlyTime()Ljava/lang/String;
.end method

.method public abstract getLimitedPolygon(DD)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoOnLineData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getNativePolygon(DD)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRCBattery()I
.end method

.method public abstract getRCSignal()I
.end method

.method public abstract getSatelliteNum()I
.end method

.method public abstract getTopMenuValue()V
.end method
