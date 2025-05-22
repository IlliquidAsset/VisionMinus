.class Lcom/powervision/condition/view/NationMapView$9$1;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView$9;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/condition/view/NationMapView$9;


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView$9;)V
    .locals 0

    .line 2280
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 2291
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getZIndex()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2295
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2297
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2298
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2301
    iget-object p1, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object p1, p1, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {p1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2304
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2306
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2307
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2308
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1400(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2310
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1400(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2312
    :cond_2
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$9$1;->this$1:Lcom/powervision/condition/view/NationMapView$9;

    iget-object v1, v1, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1, p1}, Lcom/powervision/condition/view/NationMapView;->access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$1402(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 2283
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    .line 2284
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
