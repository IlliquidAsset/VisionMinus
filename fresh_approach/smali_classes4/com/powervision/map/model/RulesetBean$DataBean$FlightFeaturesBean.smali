.class public Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;
.super Ljava/lang/Object;
.source "RulesetBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightFeaturesBean"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private flight_feature:Ljava/lang/String;

.field private input_type:Ljava/lang/String;

.field private measurement_type:Ljava/lang/Object;

.field private measurement_unit:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight_feature()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->flight_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_type()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->input_type:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement_type()Ljava/lang/Object;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->measurement_type:Ljava/lang/Object;

    return-object v0
.end method

.method public getMeasurement_unit()Ljava/lang/Object;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->measurement_unit:Ljava/lang/Object;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFlight_feature(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->flight_feature:Ljava/lang/String;

    return-void
.end method

.method public setInput_type(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->input_type:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement_type(Ljava/lang/Object;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->measurement_type:Ljava/lang/Object;

    return-void
.end method

.method public setMeasurement_unit(Ljava/lang/Object;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean$DataBean$FlightFeaturesBean;->measurement_unit:Ljava/lang/Object;

    return-void
.end method
