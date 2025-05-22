.class public Lcom/powervision/condition/utils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAmapListToNationList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 67
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 71
    invoke-static {v1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lcom/powervision/base/nationmap/model/NationLatLng;

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    return-object v0
.end method

.method public static convertNationListToAmapList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/nationmap/model/NationLatLng;

    .line 53
    invoke-static {v1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    iget-wide v3, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
