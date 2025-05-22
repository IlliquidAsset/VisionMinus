.class public Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;
.super Ljava/lang/Object;
.source "RulesetAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetAll$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightFeaturesBean"
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

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight_feature()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->flight_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_type()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->input_type:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement_type()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->measurement_type:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement_unit()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->measurement_unit:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlight_feature(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->flight_feature:Ljava/lang/String;

    return-void
.end method

.method public setInput_type(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->input_type:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement_type(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->measurement_type:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement_unit(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$FlightFeaturesBean;->measurement_unit:Ljava/lang/String;

    return-void
.end method
