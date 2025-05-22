.class public Lcom/powervision/condition/widget/NationPolyline;
.super Ljava/lang/Object;
.source "NationPolyline.java"

# interfaces
.implements Lcom/powervision/base/nationmap/interfaces/INationPolyline;


# instance fields
.field private polyline:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/powervision/condition/widget/NationPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/condition/widget/NationPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/powervision/condition/widget/NationPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationListToAmapList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void
.end method
