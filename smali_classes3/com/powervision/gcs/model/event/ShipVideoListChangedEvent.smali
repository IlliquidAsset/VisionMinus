.class public Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;
.super Ljava/lang/Object;
.source "ShipVideoListChangedEvent.java"


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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->path:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->create_time:Ljava/lang/String;

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    return-void
.end method
