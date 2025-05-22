.class Lcom/powervision/condition/geo/GeoConditionMap$4;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/geo/GeoConditionMap;->drawPloygon(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/geo/GeoConditionMap;

.field final synthetic val$argb:I

.field final synthetic val$contourGps:Lcom/powervision/opensource/geo/ContourGps;

.field final synthetic val$ls_google:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/powervision/condition/geo/GeoConditionMap;Ljava/util/List;ILcom/powervision/opensource/geo/ContourGps;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    iput-object p2, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$ls_google:Ljava/util/List;

    iput p3, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$argb:I

    iput-object p4, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$contourGps:Lcom/powervision/opensource/geo/ContourGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$ls_google:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqGeo_"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    iget-object v0, v0, Lcom/powervision/condition/geo/GeoConditionMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iget-object v3, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$ls_google:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    iget v3, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$argb:I

    .line 308
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    .line 307
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    .line 311
    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-static {v2}, Lcom/powervision/condition/geo/GeoConditionMap;->access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/condition/geo/GeoConditionMap$4;->val$contourGps:Lcom/powervision/opensource/geo/ContourGps;

    iget v3, v3, Lcom/powervision/opensource/geo/ContourGps;->num:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "drawPloygon google done"

    .line 314
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
