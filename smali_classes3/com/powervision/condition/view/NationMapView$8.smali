.class Lcom/powervision/condition/view/NationMapView$8;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->drawRectPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/view/NationMapView;


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView;)V
    .locals 0

    .line 2047
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .line 2057
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x4

    .line 2080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 2079
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    .line 2078
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne v0, v5, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2073
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v9, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2074
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v9, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1202(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2078
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2079
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2080
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x3

    if-ne v0, v3, :cond_1

    .line 2082
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2084
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v3}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2085
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v3}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2088
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2089
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2090
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 2093
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2095
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2096
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1202(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2099
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2100
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2101
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 2104
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1202(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2106
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2107
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2110
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2111
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2112
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2115
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1200(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2122
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1400(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2123
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1400(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2125
    :cond_4
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/condition/view/NationMapView;->access$1402(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    .line 2126
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$8;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1500(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polygon;

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 2050
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    .line 2051
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
