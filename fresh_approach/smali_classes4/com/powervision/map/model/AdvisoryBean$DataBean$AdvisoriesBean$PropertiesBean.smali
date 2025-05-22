.class public Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesBean"
.end annotation


# instance fields
.field private airport_id:Ljava/lang/String;

.field private airport_name:Ljava/lang/String;

.field private airspace_classification:Ljava/lang/String;

.field private authorization:Z

.field private ceiling:I

.field private facility_id:Ljava/lang/String;

.field private icao:Ljava/lang/String;

.field private laanc:Z

.field private last_edit_date:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirport_id()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airport_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAirport_name()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airport_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAirspace_classification()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airspace_classification:Ljava/lang/String;

    return-object v0
.end method

.method public getCeiling()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->ceiling:I

    return v0
.end method

.method public getFacility_id()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->facility_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcao()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->icao:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_edit_date()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->last_edit_date:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorization()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->authorization:Z

    return v0
.end method

.method public isLaanc()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->laanc:Z

    return v0
.end method

.method public setAirport_id(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airport_id:Ljava/lang/String;

    return-void
.end method

.method public setAirport_name(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airport_name:Ljava/lang/String;

    return-void
.end method

.method public setAirspace_classification(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->airspace_classification:Ljava/lang/String;

    return-void
.end method

.method public setAuthorization(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->authorization:Z

    return-void
.end method

.method public setCeiling(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->ceiling:I

    return-void
.end method

.method public setFacility_id(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->facility_id:Ljava/lang/String;

    return-void
.end method

.method public setIcao(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->icao:Ljava/lang/String;

    return-void
.end method

.method public setLaanc(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->laanc:Z

    return-void
.end method

.method public setLast_edit_date(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->last_edit_date:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$PropertiesBean;->url:Ljava/lang/String;

    return-void
.end method
