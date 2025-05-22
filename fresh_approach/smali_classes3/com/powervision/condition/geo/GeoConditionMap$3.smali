.class Lcom/powervision/condition/geo/GeoConditionMap$3;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/geo/GeoConditionMap;->checkBubble()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/geo/GeoConditionMap;


# direct methods
.method constructor <init>(Lcom/powervision/condition/geo/GeoConditionMap;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$3;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$3;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    iget-object v0, v0, Lcom/powervision/condition/geo/GeoConditionMap;->pools:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/opensource/geo/CenterPoint;

    .line 206
    iget-boolean v2, v1, Lcom/powervision/opensource/geo/CenterPoint;->isBig:Z

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/powervision/opensource/geo/CenterPoint;->getMarker()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/opensource/geo/BubbleModel;

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v2}, Lcom/powervision/opensource/geo/BubbleModel;->getStartTime()J

    move-result-wide v3

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0xbb8

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    const-wide/16 v3, 0x0

    .line 214
    invoke-virtual {v2, v3, v4}, Lcom/powervision/opensource/geo/BubbleModel;->setStartTime(J)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
