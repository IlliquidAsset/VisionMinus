.class public Lcom/powervision/map/model/RelatedGeometryBean;
.super Ljava/lang/Object;
.source "RelatedGeometryBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;
    }
.end annotation


# instance fields
.field private property_boundary:Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperty_boundary()Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/map/model/RelatedGeometryBean;->property_boundary:Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;

    return-object v0
.end method

.method public setProperty_boundary(Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/map/model/RelatedGeometryBean;->property_boundary:Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;

    return-void
.end method
