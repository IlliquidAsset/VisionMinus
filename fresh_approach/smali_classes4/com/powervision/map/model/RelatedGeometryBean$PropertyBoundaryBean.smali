.class public Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;
.super Ljava/lang/Object;
.source "RelatedGeometryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RelatedGeometryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBoundaryBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean$GeometryBeanX;
    }
.end annotation


# instance fields
.field private geometry:Lorg/json/JSONObject;

.field private id:Ljava/lang/String;

.field private min_circle_radius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeometry()Lorg/json/JSONObject;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->geometry:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMin_circle_radius()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->min_circle_radius:I

    return v0
.end method

.method public setGeometry(Lorg/json/JSONObject;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->geometry:Lorg/json/JSONObject;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMin_circle_radius(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/powervision/map/model/RelatedGeometryBean$PropertyBoundaryBean;->min_circle_radius:I

    return-void
.end method
