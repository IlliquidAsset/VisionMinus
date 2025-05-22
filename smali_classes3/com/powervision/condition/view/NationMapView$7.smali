.class Lcom/powervision/condition/view/NationMapView$7;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->onPolygonAreaSelect()V
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

    .line 1927
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3

    .line 1936
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 1937
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1938
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1940
    new-instance p1, Lcom/powervision/base/nationmap/utils/Melkman;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapListToNationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/base/nationmap/utils/Melkman;-><init>(Ljava/util/List;)V

    .line 1941
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/utils/Melkman;->getTubaoPoint()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationListToAmapList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    .line 1945
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1946
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 1947
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iput-object v0, p1, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    .line 1949
    :cond_0
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    new-instance v1, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v1, p1, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1950
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object v1, v1, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1951
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    const-string v1, "#4C67E194"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 1952
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object v2, v2, Lcom/powervision/condition/view/NationMapView;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    iput-object v1, p1, Lcom/powervision/condition/view/NationMapView;->polygonArea:Lcom/google/android/gms/maps/model/Polygon;

    .line 1953
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$700(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1954
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$700(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1955
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$702(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    .line 1957
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object v0, p1, Lcom/powervision/condition/view/NationMapView;->latLngs:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$702(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    goto :goto_0

    .line 1961
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1962
    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1963
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$700(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1964
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$700(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1966
    :cond_3
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$7;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$500(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/condition/view/NationMapView;->access$702(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    :goto_0
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1930
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    .line 1931
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
