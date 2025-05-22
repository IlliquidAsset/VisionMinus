.class public Lcom/powervision/base/model/flightlog/FlightLogData;
.super Ljava/lang/Object;
.source "FlightLogData.java"


# instance fields
.field private aircraftHeight:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xc
    .end annotation
.end field

.field private aircraftLatitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x3
    .end annotation
.end field

.field private aircraftLongitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x4
    .end annotation
.end field

.field private aircraftOrientation:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x5
    .end annotation
.end field

.field private cityName:Ljava/lang/String;

.field private currentTime:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x8
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private flyControlerElectricity:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1d
    .end annotation
.end field

.field private flyMode:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1c
    .end annotation
.end field

.field private gimbalPitchAngle:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x18
    .end annotation
.end field

.field private horizontalSpeed:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xd
    .end annotation
.end field

.field private landingElectricity:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x13
    .end annotation
.end field

.field private lastFlyElectricity:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1e
    .end annotation
.end field

.field private leftControlerLeftRight:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x15
    .end annotation
.end field

.field private leftRemoteControlerUpDown:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x14
    .end annotation
.end field

.field private maxFlySpeed:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x19
    .end annotation
.end field

.field private maxHeight:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xa
    .end annotation
.end field

.field private mileage:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x9
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1b
    .end annotation
.end field

.field private psnCode:Ljava/lang/String;
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1f
    .end annotation
.end field

.field private remainingFlightTime:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x11
    .end annotation
.end field

.field private remoteControlSingal:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1a
    .end annotation
.end field

.field private returnElectricity:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x12
    .end annotation
.end field

.field private returnPointLatitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x6
    .end annotation
.end field

.field private returnPointLongitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x7
    .end annotation
.end field

.field private rightControlerLeftRight:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x17
    .end annotation
.end field

.field private rightControlerUpDown:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x16
    .end annotation
.end field

.field private satellitesNumbers:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xf
    .end annotation
.end field

.field private straightDistance:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xb
    .end annotation
.end field

.field private totalElectricity:I
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x10
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x0
    .end annotation
.end field

.field private userLatitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x1
    .end annotation
.end field

.field private userLongitude:D
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0x2
    .end annotation
.end field

.field private verticalSpeed:F
    .annotation runtime Lcom/univocity/parsers/annotations/Parsed;
        index = 0xe
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 498
    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->fileName:Ljava/lang/String;

    .line 500
    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->cityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAircraftHeight()F
    .locals 1

    .line 331
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftHeight:F

    return v0
.end method

.method public getAircraftLatitude()D
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftLatitude:D

    return-wide v0
.end method

.method public getAircraftLongitude()D
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftLongitude:D

    return-wide v0
.end method

.method public getAircraftOrientation()F
    .locals 1

    .line 275
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftOrientation:F

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()D
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->currentTime:D

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyControlerElectricity()F
    .locals 1

    .line 459
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->flyControlerElectricity:I

    int-to-float v0, v0

    return v0
.end method

.method public getFlyMode()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->flyMode:I

    return v0
.end method

.method public getGimbalPitchAngle()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->gimbalPitchAngle:F

    return v0
.end method

.method public getHorizontalSpeed()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->horizontalSpeed:F

    return v0
.end method

.method public getLandingElectricity()F
    .locals 1

    .line 387
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->landingElectricity:F

    return v0
.end method

.method public getLastFlyElectricity()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->lastFlyElectricity:I

    return v0
.end method

.method public getLeftControlerLeftRight()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->leftControlerLeftRight:I

    return v0
.end method

.method public getLeftRemoteControlerUpDown()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->leftRemoteControlerUpDown:I

    return v0
.end method

.method public getMaxFlySpeed()F
    .locals 1

    .line 435
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->maxFlySpeed:F

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .line 315
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->maxHeight:F

    return v0
.end method

.method public getMileage()F
    .locals 1

    .line 307
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->mileage:F

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getPsnCode()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->psnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingFlightTime()D
    .locals 2

    .line 371
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->remainingFlightTime:D

    return-wide v0
.end method

.method public getRemoteControlSingal()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->remoteControlSingal:I

    return v0
.end method

.method public getReturnElectricity()F
    .locals 1

    .line 379
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnElectricity:F

    return v0
.end method

.method public getReturnPointLatitude()D
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnPointLatitude:D

    return-wide v0
.end method

.method public getReturnPointLongitude()D
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnPointLongitude:D

    return-wide v0
.end method

.method public getRightControlerLeftRight()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->rightControlerLeftRight:I

    return v0
.end method

.method public getRightControlerUpDown()I
    .locals 1

    .line 411
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->rightControlerUpDown:I

    return v0
.end method

.method public getSatellitesNumbers()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->satellitesNumbers:I

    return v0
.end method

.method public getStraightDistance()F
    .locals 1

    .line 323
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->straightDistance:F

    return v0
.end method

.method public getTotalElectricity()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->totalElectricity:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLatitude()D
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userLatitude:D

    return-wide v0
.end method

.method public getUserLongitude()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userLongitude:D

    return-wide v0
.end method

.method public getVerticalSpeed()F
    .locals 1

    .line 347
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->verticalSpeed:F

    return v0
.end method

.method public setAircraftHeight(F)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftHeight:F

    return-void
.end method

.method public setAircraftLatitude(D)V
    .locals 0

    .line 263
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftLatitude:D

    return-void
.end method

.method public setAircraftLongitude(D)V
    .locals 0

    .line 271
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftLongitude:D

    return-void
.end method

.method public setAircraftOrientation(F)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->aircraftOrientation:F

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    long-to-double p1, p1

    .line 303
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->currentTime:D

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFlyControlerElectricity(I)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->flyControlerElectricity:I

    return-void
.end method

.method public setFlyMode(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->flyMode:I

    return-void
.end method

.method public setGimbalPitchAngle(F)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->gimbalPitchAngle:F

    return-void
.end method

.method public setHorizontalSpeed(F)V
    .locals 0

    .line 343
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->horizontalSpeed:F

    return-void
.end method

.method public setLandingElectricity(F)V
    .locals 0

    .line 391
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->landingElectricity:F

    return-void
.end method

.method public setLastFlyElectricity(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->lastFlyElectricity:I

    return-void
.end method

.method public setLeftControlerLeftRight(I)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->leftControlerLeftRight:I

    return-void
.end method

.method public setLeftRemoteControlerUpDown(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->leftRemoteControlerUpDown:I

    return-void
.end method

.method public setMaxFlySpeed(F)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->maxFlySpeed:F

    return-void
.end method

.method public setMaxHeight(F)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->maxHeight:F

    return-void
.end method

.method public setMileage(F)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->mileage:F

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->productName:Ljava/lang/String;

    return-void
.end method

.method public setPsnCode(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->psnCode:Ljava/lang/String;

    return-void
.end method

.method public setRemainingFlightTime(J)V
    .locals 0

    long-to-double p1, p1

    .line 375
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->remainingFlightTime:D

    return-void
.end method

.method public setRemoteControlSingal(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->remoteControlSingal:I

    return-void
.end method

.method public setReturnElectricity(F)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnElectricity:F

    return-void
.end method

.method public setReturnPointLatitude(D)V
    .locals 0

    .line 287
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnPointLatitude:D

    return-void
.end method

.method public setReturnPointLongitude(D)V
    .locals 0

    .line 295
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->returnPointLongitude:D

    return-void
.end method

.method public setRightControlerLeftRight(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->rightControlerLeftRight:I

    return-void
.end method

.method public setRightControlerUpDown(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->rightControlerUpDown:I

    return-void
.end method

.method public setSatellitesNumbers(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->satellitesNumbers:I

    return-void
.end method

.method public setStraightDistance(F)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->straightDistance:F

    return-void
.end method

.method public setTotalElectricity(I)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->totalElectricity:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserLatitude(D)V
    .locals 0

    .line 247
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userLatitude:D

    return-void
.end method

.method public setUserLongitude(D)V
    .locals 0

    .line 255
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->userLongitude:D

    return-void
.end method

.method public setVerticalSpeed(F)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogData;->verticalSpeed:F

    return-void
.end method
