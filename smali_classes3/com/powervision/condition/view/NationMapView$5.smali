.class Lcom/powervision/condition/view/NationMapView$5;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->initAirlinePlan()V
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

    .line 1519
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$200(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1545
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/condition/view/NationMapView;->access$300(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1547
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$200(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Marker;)V

    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 1522
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$5;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/condition/view/NationMapView;->access$102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 1523
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    .line 1524
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
