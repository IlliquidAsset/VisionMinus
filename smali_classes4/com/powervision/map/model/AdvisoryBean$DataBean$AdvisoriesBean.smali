.class public Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/AdvisoryBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvisoriesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;,
        Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private distance:I

.field private id:Ljava/lang/String;

.field private last_updated:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private name:Ljava/lang/String;

.field private properties:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;

.field private requirements:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;

.field private rule_id:I

.field private ruleset_id:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->distance:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_updated()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->last_updated:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->properties:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;

    return-object v0
.end method

.method public getRequirements()Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->requirements:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;

    return-object v0
.end method

.method public getRule_id()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->rule_id:I

    return v0
.end method

.method public getRuleset_id()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->ruleset_id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->distance:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLast_updated(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->last_updated:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 182
    iput-wide p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->properties:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;

    return-void
.end method

.method public setRequirements(Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->requirements:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;

    return-void
.end method

.method public setRule_id(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->rule_id:I

    return-void
.end method

.method public setRuleset_id(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->ruleset_id:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;->type:Ljava/lang/String;

    return-void
.end method
