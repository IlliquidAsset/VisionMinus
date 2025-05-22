.class public Lcom/powervision/map/model/RulesBean;
.super Ljava/lang/Object;
.source "RulesBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RulesBean$GeometryBeanXX;
    }
.end annotation


# instance fields
.field private geometry:Lcom/google/gson/JsonObject;

.field private min_circle_radius:F

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeometry()Lcom/google/gson/JsonObject;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/map/model/RulesBean;->geometry:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getMin_circle_radius()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/powervision/map/model/RulesBean;->min_circle_radius:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/map/model/RulesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setGeometry(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/map/model/RulesBean;->geometry:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setMin_circle_radius(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/powervision/map/model/RulesBean;->min_circle_radius:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/map/model/RulesBean;->name:Ljava/lang/String;

    return-void
.end method
