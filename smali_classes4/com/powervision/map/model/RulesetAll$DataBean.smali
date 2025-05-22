.class public Lcom/powervision/map/model/RulesetAll$DataBean;
.super Ljava/lang/Object;
.source "RulesetAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;,
        Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;,
        Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;
    }
.end annotation


# instance fields
.field private airspace_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultX:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private flight_features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private jurisdiction:Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;

.field private name:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field private selection_type:Ljava/lang/String;

.field private short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirspace_types()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->airspace_types:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight_features()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->flight_features:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJurisdiction()Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->jurisdiction:Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getSelection_type()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->selection_type:Ljava/lang/String;

    return-object v0
.end method

.method public getShort_name()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->short_name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultX()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->defaultX:Z

    return v0
.end method

.method public setAirspace_types(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->airspace_types:Ljava/util/List;

    return-void
.end method

.method public setDefaultX(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->defaultX:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlight_features(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->flight_features:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setJurisdiction(Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->jurisdiction:Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->rules:Ljava/util/List;

    return-void
.end method

.method public setSelection_type(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->selection_type:Ljava/lang/String;

    return-void
.end method

.method public setShort_name(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean;->short_name:Ljava/lang/String;

    return-void
.end method
