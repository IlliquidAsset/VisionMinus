.class public Lcom/powervision/gcs/model/FlightRecordsPosition;
.super Ljava/lang/Object;
.source "FlightRecordsPosition.java"


# instance fields
.field public aircraftPitch:D

.field public aircraftRoll:D

.field public aircraftYaw:D

.field public altitude:D

.field public gimbalPitch:D

.field public gimbalRoll:D

.field public gimbalYaw:D

.field public gpsNum:I

.field public latitude:D

.field public longitude:D

.field public positionTime:Ljava/lang/String;

.field public remoteMode:I

.field public remoteType:I

.field public specialOperation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->longitude:D

    .line 98
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->latitude:D

    .line 99
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->altitude:D

    .line 101
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalPitch:D

    .line 102
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalRoll:D

    .line 103
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalYaw:D

    .line 105
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftPitch:D

    .line 106
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftRoll:D

    .line 107
    iput-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftYaw:D

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->specialOperation:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->positionTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gpsNum:I

    return-void
.end method


# virtual methods
.method public getAircraftPitch()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftPitch:D

    return-wide v0
.end method

.method public getAircraftRoll()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftRoll:D

    return-wide v0
.end method

.method public getAircraftYaw()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftYaw:D

    return-wide v0
.end method

.method public getAltitude()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->altitude:D

    return-wide v0
.end method

.method public getGimbalPitch()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalPitch:D

    return-wide v0
.end method

.method public getGimbalRoll()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalRoll:D

    return-wide v0
.end method

.method public getGimbalYaw()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalYaw:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->longitude:D

    return-wide v0
.end method

.method public getPositionTime()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->positionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialOperation()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->specialOperation:Ljava/lang/String;

    return-object v0
.end method

.method public setAircraftPitch(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftPitch:D

    return-void
.end method

.method public setAircraftRoll(D)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftRoll:D

    return-void
.end method

.method public setAircraftYaw(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->aircraftYaw:D

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->altitude:D

    return-void
.end method

.method public setGimbalPitch(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalPitch:D

    return-void
.end method

.method public setGimbalRoll(D)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalRoll:D

    return-void
.end method

.method public setGimbalYaw(D)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->gimbalYaw:D

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->longitude:D

    return-void
.end method

.method public setPositionTime(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->positionTime:Ljava/lang/String;

    return-void
.end method

.method public setSpecialOperation(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsPosition;->specialOperation:Ljava/lang/String;

    return-void
.end method
