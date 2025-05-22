.class public Lcom/powervision/map/model/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# instance fields
.field private airport_id:Ljava/lang/String;

.field private airport_name:Ljava/lang/String;

.field private airspace_class:Ljava/lang/String;

.field private airspace_classification:Ljava/lang/String;

.field private authorization:Z

.field private ceiling:I

.field private facility_id:Ljava/lang/String;

.field private icao:Ljava/lang/String;

.field private laanc:Z

.field private last_edit_date:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirport_id()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->airport_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAirport_name()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->airport_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAirspace_class()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->airspace_class:Ljava/lang/String;

    return-object v0
.end method

.method public getAirspace_classification()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->airspace_classification:Ljava/lang/String;

    return-object v0
.end method

.method public getCeiling()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/powervision/map/model/Properties;->ceiling:I

    return v0
.end method

.method public getFacility_id()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->facility_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcao()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->icao:Ljava/lang/String;

    return-object v0
.end method

.method public getLaanc()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/powervision/map/model/Properties;->laanc:Z

    return v0
.end method

.method public getLast_edit_date()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->last_edit_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/map/model/Properties;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorization()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/powervision/map/model/Properties;->authorization:Z

    return v0
.end method

.method public setAirport_id(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->airport_id:Ljava/lang/String;

    return-void
.end method

.method public setAirport_name(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->airport_name:Ljava/lang/String;

    return-void
.end method

.method public setAirspace_class(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->airspace_class:Ljava/lang/String;

    return-void
.end method

.method public setAirspace_classification(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->airspace_classification:Ljava/lang/String;

    return-void
.end method

.method public setAuthorization(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/powervision/map/model/Properties;->authorization:Z

    return-void
.end method

.method public setCeiling(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/powervision/map/model/Properties;->ceiling:I

    return-void
.end method

.method public setFacility_id(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->facility_id:Ljava/lang/String;

    return-void
.end method

.method public setIcao(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->icao:Ljava/lang/String;

    return-void
.end method

.method public setLaanc(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/powervision/map/model/Properties;->laanc:Z

    return-void
.end method

.method public setLast_edit_date(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->last_edit_date:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/map/model/Properties;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/Properties;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icao=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->icao:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", laanc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/map/model/Properties;->laanc:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ceiling="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/map/model/Properties;->ceiling:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", airport_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->airport_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", facility_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->facility_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", airport_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->airport_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authorization="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/map/model/Properties;->authorization:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", last_edit_date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->last_edit_date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", airspace_classification=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->airspace_classification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", airspace_class=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/Properties;->airspace_class:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
