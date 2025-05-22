.class Lcom/powervision/condition/view/NationMapView$10;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
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

    .line 2455
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$10;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 2458
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 2459
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$10;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1600(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$10;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1600(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    move-result-object v0

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;->onFishBubbleClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    :cond_0
    return-void
.end method
