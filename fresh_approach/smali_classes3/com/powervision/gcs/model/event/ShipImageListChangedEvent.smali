.class public Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;
.super Ljava/lang/Object;
.source "ShipImageListChangedEvent.java"


# instance fields
.field public create_time:Ljava/lang/String;

.field public mMediaMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->path:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->create_time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    return-void
.end method
