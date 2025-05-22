.class Lcom/powervision/condition/geo/GeoConditionMap$1;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/geo/GeoConditionMap;->deletePolygon([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/geo/GeoConditionMap;

.field final synthetic val$num:[I


# direct methods
.method constructor <init>(Lcom/powervision/condition/geo/GeoConditionMap;[I)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$1;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    iput-object p2, p0, Lcom/powervision/condition/geo/GeoConditionMap$1;->val$num:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/powervision/condition/geo/GeoConditionMap$1;->val$num:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 115
    aget v1, v1, v0

    .line 116
    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap$1;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-static {v2}, Lcom/powervision/condition/geo/GeoConditionMap;->access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_1

    :cond_0
    const-string v2, "lzqGeo_"

    const-string v3, "\u5220\u9664\u4e86\u4e00\u4e2a\u7a7a\u7684"

    .line 120
    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/powervision/condition/geo/GeoConditionMap$1;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-static {v2}, Lcom/powervision/condition/geo/GeoConditionMap;->access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
