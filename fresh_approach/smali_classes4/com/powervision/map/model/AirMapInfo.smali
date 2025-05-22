.class public Lcom/powervision/map/model/AirMapInfo;
.super Ljava/lang/Object;
.source "AirMapInfo.java"


# instance fields
.field private airspace_uuid:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private geometry:Lcom/google/gson/JsonObject;

.field private id:Ljava/lang/String;

.field private last_updated:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private min_circle_radius:D

.field private name:Ljava/lang/String;

.field private properties:Lcom/powervision/map/model/Properties;

.field private related_geometry:Lcom/powervision/map/model/RelatedGeometryBean;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirspace_uuid()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->airspace_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Lcom/google/gson/JsonObject;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->geometry:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_updated()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->last_updated:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/powervision/map/model/AirMapInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/powervision/map/model/AirMapInfo;->longitude:D

    return-wide v0
.end method

.method public getMin_circle_radius()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/powervision/map/model/AirMapInfo;->min_circle_radius:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/powervision/map/model/Properties;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->properties:Lcom/powervision/map/model/Properties;

    return-object v0
.end method

.method public getRelated_geometry()Lcom/powervision/map/model/RelatedGeometryBean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->related_geometry:Lcom/powervision/map/model/RelatedGeometryBean;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesBean;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/map/model/AirMapInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAirspace_uuid(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->airspace_uuid:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setGeometry(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->geometry:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setLast_updated(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->last_updated:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/powervision/map/model/AirMapInfo;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/powervision/map/model/AirMapInfo;->longitude:D

    return-void
.end method

.method public setMin_circle_radius(D)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/powervision/map/model/AirMapInfo;->min_circle_radius:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Lcom/powervision/map/model/Properties;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->properties:Lcom/powervision/map/model/Properties;

    return-void
.end method

.method public setRelated_geometry(Lcom/powervision/map/model/RelatedGeometryBean;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->related_geometry:Lcom/powervision/map/model/RelatedGeometryBean;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesBean;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->rules:Ljava/util/List;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->state:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/map/model/AirMapInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirMapInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/AirMapInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", airspace_uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->airspace_uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/map/model/AirMapInfo;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/map/model/AirMapInfo;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", min_circle_radius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/map/model/AirMapInfo;->min_circle_radius:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", last_updated=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/map/model/AirMapInfo;->last_updated:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/AirMapInfo;->properties:Lcom/powervision/map/model/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/AirMapInfo;->geometry:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", related_geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/AirMapInfo;->related_geometry:Lcom/powervision/map/model/RelatedGeometryBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/map/model/AirMapInfo;->rules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
