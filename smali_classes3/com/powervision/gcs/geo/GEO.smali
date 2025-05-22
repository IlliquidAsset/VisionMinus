.class public Lcom/powervision/gcs/geo/GEO;
.super Ljava/lang/Object;
.source "GEO.java"


# instance fields
.field private check:J

.field private currentGps:Lcom/powervision/opensource/geo/PointGps;

.field private id:J

.field private final intensity:I

.field map:Lcom/powervision/condition/geo/GeoConditionMap;


# direct methods
.method public constructor <init>(Lcom/powervision/condition/geo/GeoConditionMap;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/powervision/gcs/geo/GEO;->check:J

    .line 33
    iput-wide v0, p0, Lcom/powervision/gcs/geo/GEO;->id:J

    const/4 v0, 0x5

    .line 35
    iput v0, p0, Lcom/powervision/gcs/geo/GEO;->intensity:I

    .line 47
    iput-object p1, p0, Lcom/powervision/gcs/geo/GEO;->map:Lcom/powervision/condition/geo/GeoConditionMap;

    .line 52
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->get()Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/geo/GEO$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/geo/GEO$1;-><init>(Lcom/powervision/gcs/geo/GEO;Lcom/powervision/condition/geo/GeoConditionMap;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack;->setJniCallBack(Lcom/powervision/gcs/ui/aty/ship/JniTestGeoCallBack$JniCallback;)V

    return-void
.end method
