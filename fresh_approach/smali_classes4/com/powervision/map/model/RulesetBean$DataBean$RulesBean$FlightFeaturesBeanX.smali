.class public Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;
.super Ljava/lang/Object;
.source "RulesetBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightFeaturesBeanX"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private flight_feature:Ljava/lang/String;

.field private input_type:Ljava/lang/String;

.field private measurement_type:Ljava/lang/String;

.field private measurement_unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight_feature()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->flight_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_type()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->input_type:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement_type()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->measurement_type:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement_unit()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->measurement_unit:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlight_feature(Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->flight_feature:Ljava/lang/String;

    return-void
.end method

.method public setInput_type(Ljava/lang/String;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->input_type:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement_type(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->measurement_type:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement_unit(Ljava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$RulesBean$FlightFeaturesBeanX;->measurement_unit:Ljava/lang/String;

    return-void
.end method
