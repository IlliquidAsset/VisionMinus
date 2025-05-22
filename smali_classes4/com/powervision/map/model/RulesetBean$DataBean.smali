.class public Lcom/powervision/map/model/RulesetBean$DataBean;
.super Ljava/lang/Object;
.source "RulesetBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean;,
        Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;,
        Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;
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
            "Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private jurisdiction:Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;

.field private name:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field private selection_type:Ljava/lang/String;

.field private short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
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

    .line 347
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->airspace_types:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight_features()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->flight_features:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJurisdiction()Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->jurisdiction:Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getSelection_type()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->selection_type:Ljava/lang/String;

    return-object v0
.end method

.method public getShort_name()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->short_name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultX()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->defaultX:Z

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

    .line 351
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->airspace_types:Ljava/util/List;

    return-void
.end method

.method public setDefaultX(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->defaultX:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlight_features(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;",
            ">;)V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->flight_features:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setJurisdiction(Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->jurisdiction:Lcom/powervision/map/model/RulesetBean$DataBean$JurisdictionBean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean;",
            ">;)V"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->rules:Ljava/util/List;

    return-void
.end method

.method public setSelection_type(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->selection_type:Ljava/lang/String;

    return-void
.end method

.method public setShort_name(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean;->short_name:Ljava/lang/String;

    return-void
.end method
