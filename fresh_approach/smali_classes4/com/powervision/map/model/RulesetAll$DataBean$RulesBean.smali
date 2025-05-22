.class public Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;
.super Ljava/lang/Object;
.source "RulesetAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetAll$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RulesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean$FlightFeaturesBeanX;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private display_order:I

.field private flight_features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean$FlightFeaturesBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private short_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_order()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->display_order:I

    return v0
.end method

.method public getFlight_features()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean$FlightFeaturesBeanX;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->flight_features:Ljava/util/List;

    return-object v0
.end method

.method public getShort_text()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->short_text:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisplay_order(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->display_order:I

    return-void
.end method

.method public setFlight_features(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean$FlightFeaturesBeanX;",
            ">;)V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->flight_features:Ljava/util/List;

    return-void
.end method

.method public setShort_text(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$RulesBean;->short_text:Ljava/lang/String;

    return-void
.end method
