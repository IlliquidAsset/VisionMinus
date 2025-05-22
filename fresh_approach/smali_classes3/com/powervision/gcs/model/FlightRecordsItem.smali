.class public Lcom/powervision/gcs/model/FlightRecordsItem;
.super Ljava/lang/Object;
.source "FlightRecordsItem.java"


# instance fields
.field private aircraftId:Ljava/lang/String;

.field private cameraCounts:I

.field captureImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CaptureImage;",
            ">;"
        }
    .end annotation
.end field

.field private cityName:Ljava/lang/String;

.field private flightDate:Ljava/lang/String;

.field private flightDistance:I

.field private flightPosition:Ljava/lang/String;

.field flightPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/FlightRecordsPosition;",
            ">;"
        }
    .end annotation
.end field

.field private flightTime:J

.field private isCollection:Z

.field private longVideo:J

.field private maxAltitude:D

.field private maxSpeed:D

.field private psn:Ljava/lang/String;

.field private recordEnd:Ljava/lang/String;

.field private recordStrat:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->isCollection:Z

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDate:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPosition:Ljava/lang/String;

    .line 27
    iput v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDistance:I

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightTime:J

    const-wide/16 v4, 0x0

    .line 31
    iput-wide v4, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->maxAltitude:D

    .line 33
    iput v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cameraCounts:I

    .line 35
    iput-wide v2, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->longVideo:J

    .line 37
    iput-object v1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->userId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->aircraftId:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cityName:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->captureImages:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPositions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAircraftId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->aircraftId:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraCounts()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cameraCounts:I

    return v0
.end method

.method public getCaptureImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CaptureImage;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->captureImages:Ljava/util/List;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightDate()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightDistance()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDistance:I

    return v0
.end method

.method public getFlightPosition()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/FlightRecordsPosition;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPositions:Ljava/util/List;

    return-object v0
.end method

.method public getFlightTime()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightTime:J

    return-wide v0
.end method

.method public getLongVideo()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->longVideo:J

    return-wide v0
.end method

.method public getMaxAltitude()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->maxAltitude:D

    return-wide v0
.end method

.method public getMaxSpeed()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->maxSpeed:D

    return-wide v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->psn:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordEnd()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->recordEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordStrat()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->recordStrat:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isCollection()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->isCollection:Z

    return v0
.end method

.method public setAircraftId(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->aircraftId:Ljava/lang/String;

    return-void
.end method

.method public setCameraCounts(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cameraCounts:I

    return-void
.end method

.method public setCaptureImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CaptureImage;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->captureImages:Ljava/util/List;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCollection(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->isCollection:Z

    return-void
.end method

.method public setFlightDate(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDate:Ljava/lang/String;

    return-void
.end method

.method public setFlightDistance(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightDistance:I

    return-void
.end method

.method public setFlightPosition(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPosition:Ljava/lang/String;

    return-void
.end method

.method public setFlightPositions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/FlightRecordsPosition;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightPositions:Ljava/util/List;

    return-void
.end method

.method public setFlightTime(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->flightTime:J

    return-void
.end method

.method public setIsCollection(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->isCollection:Z

    return-void
.end method

.method public setLongVideo(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->longVideo:J

    return-void
.end method

.method public setMaxAltitude(D)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->maxAltitude:D

    return-void
.end method

.method public setMaxSpeed(D)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->maxSpeed:D

    return-void
.end method

.method public setPsn(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->psn:Ljava/lang/String;

    return-void
.end method

.method public setRecordEnd(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->recordEnd:Ljava/lang/String;

    return-void
.end method

.method public setRecordStrat(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->recordStrat:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightRecordsItem;->userId:Ljava/lang/String;

    return-void
.end method
