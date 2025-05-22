.class Lcom/powervision/condition/geo/GeoConditionMap$2;
.super Ljava/lang/Object;
.source "GeoConditionMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/geo/GeoConditionMap;->deleteAllContours()V
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

    .line 142
    iput-object p1, p0, Lcom/powervision/condition/geo/GeoConditionMap$2;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$2;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-static {v0}, Lcom/powervision/condition/geo/GeoConditionMap;->access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/geo/GeoConditionMap$2;->this$0:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-static {v0}, Lcom/powervision/condition/geo/GeoConditionMap;->access$000(Lcom/powervision/condition/geo/GeoConditionMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
