.class public Lcom/powervision/base/db/model/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# instance fields
.field private coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/powervision/base/db/model/Geometry;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/base/db/model/Geometry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/powervision/base/db/model/Geometry;->coordinates:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/base/db/model/Geometry;->type:Ljava/lang/String;

    return-void
.end method
