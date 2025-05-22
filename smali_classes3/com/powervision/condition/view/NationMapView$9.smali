.class Lcom/powervision/condition/view/NationMapView$9;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->drawTriangle()V
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

    .line 2245
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 17

    move-object/from16 v0, p0

    .line 2248
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iget v1, v1, Lcom/powervision/base/base/BaseApplication;->mScreenWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 2249
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    iget v3, v3, Lcom/powervision/base/base/BaseApplication;->mScreenHeight:I

    div-int/2addr v3, v2

    .line 2251
    iget-object v4, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v4}, Lcom/powervision/condition/view/NationMapView;->access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v5

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/condition/view/NationMapView;->access$902(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2252
    iget-object v4, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v4}, Lcom/powervision/condition/view/NationMapView;->access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v5

    new-instance v6, Landroid/graphics/Point;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v8

    sub-int v8, v1, v8

    int-to-double v9, v3

    invoke-static {v7}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    int-to-double v11, v3

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double v11, v11, v15

    add-double/2addr v11, v9

    double-to-int v3, v11

    invoke-direct {v6, v8, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/condition/view/NationMapView;->access$1002(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2253
    iget-object v3, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v3}, Lcom/powervision/condition/view/NationMapView;->access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-static {v7}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v6

    add-int/2addr v1, v6

    invoke-static {v7}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double v6, v6, v11

    add-double/2addr v9, v6

    double-to-int v6, v9

    invoke-direct {v5, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/powervision/condition/view/NationMapView;->access$1102(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 2257
    iget-object v1, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2258
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 2260
    iget-object v3, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v3}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    const/high16 v5, 0x40000000    # 2.0f

    .line 2261
    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 2263
    iget-object v5, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v5}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/powervision/condition/view/NationMapView;->drawRoundMarkersByPosition(Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    .line 2264
    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 2266
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    iget-object v8, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v8}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2268
    iget-object v8, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v8}, Lcom/powervision/condition/view/NationMapView;->access$1000(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2269
    iget-object v8, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v8}, Lcom/powervision/condition/view/NationMapView;->access$1100(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2270
    iget-object v8, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v8}, Lcom/powervision/condition/view/NationMapView;->access$900(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    iget-object v8, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v8}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    iget-object v1, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    iget-object v1, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$1300(Lcom/powervision/condition/view/NationMapView;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    iget-object v1, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1, v6}, Lcom/powervision/condition/view/NationMapView;->access$800(Lcom/powervision/condition/view/NationMapView;Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/condition/view/NationMapView;->access$1402(Lcom/powervision/condition/view/NationMapView;Lcom/google/android/gms/maps/model/Polyline;)Lcom/google/android/gms/maps/model/Polyline;

    .line 2280
    iget-object v1, v0, Lcom/powervision/condition/view/NationMapView$9;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v1}, Lcom/powervision/condition/view/NationMapView;->access$600(Lcom/powervision/condition/view/NationMapView;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lcom/powervision/condition/view/NationMapView$9$1;

    invoke-direct {v2, v0}, Lcom/powervision/condition/view/NationMapView$9$1;-><init>(Lcom/powervision/condition/view/NationMapView$9;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    return-void
.end method
