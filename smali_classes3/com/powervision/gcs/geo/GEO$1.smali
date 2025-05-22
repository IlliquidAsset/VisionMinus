.class Lcom/powervision/gcs/geo/GEO$1;
.super Ljava/lang/Object;
.source "GEO.java"

# interfaces
.implements Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/geo/GEO;-><init>(Lcom/powervision/condition/geo/GeoConditionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/geo/GEO;

.field final synthetic val$map:Lcom/powervision/condition/geo/GeoConditionMap;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/geo/GEO;Lcom/powervision/condition/geo/GeoConditionMap;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/geo/GEO$1;->this$0:Lcom/powervision/gcs/geo/GEO;

    iput-object p2, p0, Lcom/powervision/gcs/geo/GEO$1;->val$map:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAllContours()V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread deleteAllContours:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqGeo+"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/geo/GEO$1;->val$map:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-virtual {v0}, Lcom/powervision/condition/geo/GeoConditionMap;->deleteAllContours()V

    return-void
.end method

.method public deletePolygon([I)V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread deletePolygon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqGeo_"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/geo/GEO$1;->val$map:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-virtual {v0, p1}, Lcom/powervision/condition/geo/GeoConditionMap;->deletePolygon([I)V

    return-void
.end method

.method public draw(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread draw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqGeo_"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/geo/GEO$1;->val$map:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-virtual {v0, p1}, Lcom/powervision/condition/geo/GeoConditionMap;->drawPloygon(Ljava/util/ArrayList;)V

    return-void
.end method

.method public drawAll(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawAll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqGeo+"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/geo/GEO$1;->val$map:Lcom/powervision/condition/geo/GeoConditionMap;

    invoke-virtual {v0, p1}, Lcom/powervision/condition/geo/GeoConditionMap;->drawPloygon(Ljava/util/ArrayList;)V

    return-void
.end method

.method public drawClomns(DDDD)V
    .locals 0

    return-void
.end method

.method public drawLines(DDDD)V
    .locals 0

    return-void
.end method

.method public drawNewDataArea(DDDD)V
    .locals 0

    return-void
.end method

.method public drawNewPoint(DD)V
    .locals 0

    return-void
.end method
