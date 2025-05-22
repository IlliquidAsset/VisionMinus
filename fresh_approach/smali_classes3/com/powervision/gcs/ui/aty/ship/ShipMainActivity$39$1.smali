.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->onMapLoaded(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;)V
    .locals 0

    .line 4473
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addANewData(Lcom/powervision/opensource/geo/PointGps;)V
    .locals 12

    const-string v0, "lzqGeo"

    const-string v1, " ------- JNI addANewDataGeo ------ "

    .line 4483
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    iget-wide v2, p1, Lcom/powervision/opensource/geo/PointGps;->x:D

    iget-wide v4, p1, Lcom/powervision/opensource/geo/PointGps;->y:D

    iget-wide v6, p1, Lcom/powervision/opensource/geo/PointGps;->z:D

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v2 .. v11}, Lcom/powervision/gcs/geo/JniGeoClass;->addANewDataGeo(DDDJJ)V

    return-void
.end method

.method public changeTheRange(D)V
    .locals 0

    .line 4494
    invoke-static {p1, p2}, Lcom/powervision/gcs/geo/JniGeoClass;->changeRange(D)V

    return-void
.end method

.method public doMath()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4489
    invoke-static {v0, v1}, Lcom/powervision/gcs/geo/JniGeoClass;->doMath(J)V

    return-void
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public free()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4499
    invoke-static {v0, v1}, Lcom/powervision/gcs/geo/JniGeoClass;->free(J)V

    return-void
.end method

.method public init()V
    .locals 4

    const-string v0, "lzqGeo"

    const-string v1, " ------- JNI init ------ "

    .line 4477
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/16 v2, 0x0

    .line 4478
    invoke-static {v0, v1, v2, v3}, Lcom/powervision/gcs/geo/JniGeoClass;->init(DJ)V

    return-void
.end method
