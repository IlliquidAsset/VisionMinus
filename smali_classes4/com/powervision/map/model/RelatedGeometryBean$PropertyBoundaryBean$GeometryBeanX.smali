.class public Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;
.super Ljava/lang/Object;
.source "RelatedGeometryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeometryBeanX"
.end annotation


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

    .line 126
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

    .line 180
    iget-object v0, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;->type:Ljava/lang/String;

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

    .line 184
    iput-object p1, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;->coordinates:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;->type:Ljava/lang/String;

    return-void
.end method
