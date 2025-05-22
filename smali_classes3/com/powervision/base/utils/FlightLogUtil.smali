.class public Lcom/powervision/base/utils/FlightLogUtil;
.super Ljava/lang/Object;
.source "FlightLogUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static mInstance:Lcom/powervision/base/utils/FlightLogUtil;


# instance fields
.field final Tag:Ljava/lang/String;

.field private aircraftHeight:F

.field private aircraftLatitude:D

.field private aircraftLongitude:D

.field private aircraftOrientation:F

.field private currentTime:D

.field private flyControlerElectricity:I

.field private flyMode:I

.field private gimbalPitchAngle:F

.field private gpsSpeed:I

.field private horizontalSpeed:F

.field private landingElectricity:F

.field private lastFlyElectricity:I

.field private leftControlerLeftRight:I

.field private leftRemoteControlerUpDown:I

.field private localRemoteMode:I

.field private mCsvHeader:Ljava/lang/String;

.field mMediaProjection:Landroid/media/projection/MediaProjection;

.field private maxFlySpeed:F

.field private maxHeight:F

.field private mileage:F

.field private productName:Ljava/lang/String;

.field private psnCode:Ljava/lang/String;

.field private remainingFlightTime:D

.field private remoteControlSingal:I

.field private returnElectricity:F

.field private returnPointLatitude:D

.field private returnPointLongitude:D

.field private rightControlerLeftRight:I

.field private rightControlerUpDown:I

.field private satellitesNumbers:I

.field private straightDistance:F

.field private totalElectricity:I

.field private userId:Ljava/lang/String;

.field private userLatitude:D

.field private userLongitude:D

.field private verticalSpeed:F


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlightlogUtil"

    .line 17
    iput-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->Tag:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->userId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLatitude:D

    .line 34
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLongitude:D

    .line 38
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLatitude:D

    .line 42
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLongitude:D

    const/4 v3, 0x0

    .line 46
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftOrientation:F

    .line 50
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLatitude:D

    .line 54
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLongitude:D

    .line 59
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->currentTime:D

    .line 64
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->mileage:F

    .line 69
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxHeight:F

    .line 74
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->straightDistance:F

    .line 79
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftHeight:F

    .line 83
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->horizontalSpeed:F

    .line 87
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->verticalSpeed:F

    const/4 v4, 0x0

    .line 91
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->satellitesNumbers:I

    .line 95
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->totalElectricity:I

    .line 100
    iput-wide v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->remainingFlightTime:D

    .line 105
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnElectricity:F

    .line 109
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->landingElectricity:F

    .line 113
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftRemoteControlerUpDown:I

    .line 117
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftControlerLeftRight:I

    .line 121
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerUpDown:I

    .line 125
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerLeftRight:I

    .line 129
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->gimbalPitchAngle:F

    .line 133
    iput v3, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxFlySpeed:F

    .line 137
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->remoteControlSingal:I

    const-string v1, "PowerEgg X"

    .line 142
    iput-object v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->productName:Ljava/lang/String;

    .line 147
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyMode:I

    .line 152
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyControlerElectricity:I

    .line 156
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->lastFlyElectricity:I

    .line 161
    iput-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->psnCode:Ljava/lang/String;

    .line 167
    iput v4, p0, Lcom/powervision/base/utils/FlightLogUtil;->gpsSpeed:I

    const/4 v0, 0x2

    .line 182
    iput v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->localRemoteMode:I

    const-string v0, "userId,userLat,userLon,device_lat,device_lon,device_toward,return_lat,return_lon,current_time,mileage,max_height,distance,device_height,horizontal_velocity,vertical_speed,satellite_star_num,total_electricity,remaining_time,return_electricity,land_electricity,roker_left_u_d,roker_left_l_r,roker_right_u_d,roker_right_l_r,gimbal_pitching_axis,max_speed,remote_control_signal,product_name,fly_mode,remote_control_battery,remaining_battery,device_code,Gps_speed"

    .line 467
    iput-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mCsvHeader:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/utils/FlightLogUtil;
    .locals 1

    .line 516
    sget-object v0, Lcom/powervision/base/utils/FlightLogUtil;->mInstance:Lcom/powervision/base/utils/FlightLogUtil;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/powervision/base/utils/FlightLogUtil;

    invoke-direct {v0}, Lcom/powervision/base/utils/FlightLogUtil;-><init>()V

    sput-object v0, Lcom/powervision/base/utils/FlightLogUtil;->mInstance:Lcom/powervision/base/utils/FlightLogUtil;

    .line 519
    :cond_0
    sget-object v0, Lcom/powervision/base/utils/FlightLogUtil;->mInstance:Lcom/powervision/base/utils/FlightLogUtil;

    return-object v0
.end method

.method public static getPositionByOriginalData(D)D
    .locals 5

    .line 592
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p0, Ljava/math/BigDecimal;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p1, 0x7

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getAircraftHeight()F
    .locals 1

    .line 295
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftHeight:F

    return v0
.end method

.method public getAircraftLatitude()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLatitude:D

    return-wide v0
.end method

.method public getAircraftLongitude()D
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLongitude:D

    return-wide v0
.end method

.method public getAircraftOrientation()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftOrientation:F

    return v0
.end method

.method public getCSVHeader()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mCsvHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()D
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->currentTime:D

    return-wide v0
.end method

.method public getFlyControlerElectricity()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyControlerElectricity:I

    return v0
.end method

.method public getFlyMode()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyMode:I

    return v0
.end method

.method public getGimbalPitchAngle()F
    .locals 1

    .line 397
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->gimbalPitchAngle:F

    return v0
.end method

.method public getGpsSpeed()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->gpsSpeed:I

    return v0
.end method

.method public getHorizontalSpeed()F
    .locals 1

    .line 306
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->horizontalSpeed:F

    return v0
.end method

.method public getLandingElectricity()F
    .locals 1

    .line 357
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->landingElectricity:F

    return v0
.end method

.method public getLastFlyElectricity()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->lastFlyElectricity:I

    return v0
.end method

.method public getLeftControlerLeftRight()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftControlerLeftRight:I

    return v0
.end method

.method public getLeftRemoteControlerUpDown()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftRemoteControlerUpDown:I

    return v0
.end method

.method public getLocalRemoteMode()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->localRemoteMode:I

    return v0
.end method

.method public getMaxFlySpeed()F
    .locals 1

    .line 405
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxFlySpeed:F

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .line 279
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxHeight:F

    return v0
.end method

.method public getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public getMileage()F
    .locals 1

    .line 267
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mileage:F

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getPsnCode()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->psnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingFlightTime()D
    .locals 2

    .line 341
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->remainingFlightTime:D

    return-wide v0
.end method

.method public getRemoteControlSingal()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->remoteControlSingal:I

    return v0
.end method

.method public getReturnElectricity()F
    .locals 1

    .line 349
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnElectricity:F

    return v0
.end method

.method public getReturnPointLatitude()D
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLatitude:D

    return-wide v0
.end method

.method public getReturnPointLongitude()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLongitude:D

    return-wide v0
.end method

.method public getRightControlerLeftRight()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerLeftRight:I

    return v0
.end method

.method public getRightControlerUpDown()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerUpDown:I

    return v0
.end method

.method public getSatellitesNumbers()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->satellitesNumbers:I

    return v0
.end method

.method public getStraightDistance()F
    .locals 1

    .line 287
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->straightDistance:F

    return v0
.end method

.method public getTotalElectricity()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->totalElectricity:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLatitude()D
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLatitude:D

    return-wide v0
.end method

.method public getUserLongitude()D
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLongitude:D

    return-wide v0
.end method

.method public getVerticalSpeed()F
    .locals 1

    .line 317
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->verticalSpeed:F

    return v0
.end method

.method public setAircraftHeight(F)V
    .locals 1

    .line 299
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftHeight:F

    .line 300
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxHeight:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 301
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxHeight:F

    :cond_0
    return-void
.end method

.method public setAircraftLatitude(D)V
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLatitude:D

    return-void
.end method

.method public setAircraftLongitude(D)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftLongitude:D

    return-void
.end method

.method public setAircraftOrientation(F)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->aircraftOrientation:F

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    long-to-double p1, p1

    .line 263
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->currentTime:D

    return-void
.end method

.method public setFlyControlerElectricity(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyControlerElectricity:I

    return-void
.end method

.method public setFlyMode(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->flyMode:I

    return-void
.end method

.method public setGimbalPitchAngle(F)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->gimbalPitchAngle:F

    return-void
.end method

.method public setGpsSpeed(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->gpsSpeed:I

    return-void
.end method

.method public setHorizontalSpeed(F)V
    .locals 1

    .line 310
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->horizontalSpeed:F

    .line 311
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxFlySpeed:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 312
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxFlySpeed:F

    :cond_0
    return-void
.end method

.method public setLandingElectricity(F)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->landingElectricity:F

    return-void
.end method

.method public setLastFlyElectricity(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->lastFlyElectricity:I

    return-void
.end method

.method public setLeftControlerLeftRight(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftControlerLeftRight:I

    return-void
.end method

.method public setLeftRemoteControlerUpDown(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->leftRemoteControlerUpDown:I

    return-void
.end method

.method public setLocalRemoteMode(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->localRemoteMode:I

    return-void
.end method

.method public setMaxFlySpeed(F)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxFlySpeed:F

    return-void
.end method

.method public setMaxHeight(F)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->maxHeight:F

    return-void
.end method

.method public setMediaProjection(Landroid/media/projection/MediaProjection;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method public setMileage(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 274
    :cond_0
    iget v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mileage:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/powervision/base/utils/FlightLogUtil;->mileage:F

    .line 275
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/base/utils/FlightLogUtil;->mileage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BP_FLY_MILEAGE"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->productName:Ljava/lang/String;

    return-void
.end method

.method public setPsnCode(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->psnCode:Ljava/lang/String;

    return-void
.end method

.method public setRemainingFlightTime(J)V
    .locals 0

    long-to-double p1, p1

    .line 345
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->remainingFlightTime:D

    return-void
.end method

.method public setRemoteControlSingal(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->remoteControlSingal:I

    return-void
.end method

.method public setReturnElectricity(F)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnElectricity:F

    return-void
.end method

.method public setReturnPointLatitude(D)V
    .locals 0

    .line 247
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLatitude:D

    return-void
.end method

.method public setReturnPointLongitude(D)V
    .locals 0

    .line 255
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->returnPointLongitude:D

    return-void
.end method

.method public setRightControlerLeftRight(I)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerLeftRight:I

    return-void
.end method

.method public setRightControlerUpDown(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->rightControlerUpDown:I

    return-void
.end method

.method public setSatellitesNumbers(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->satellitesNumbers:I

    return-void
.end method

.method public setStraightDistance(F)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->straightDistance:F

    return-void
.end method

.method public setTotalElectricity(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->totalElectricity:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserLatitude(D)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLatitude:D

    return-void
.end method

.method public setUserLongitude(D)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->userLongitude:D

    return-void
.end method

.method public setVerticalSpeed(F)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/powervision/base/utils/FlightLogUtil;->verticalSpeed:F

    return-void
.end method

.method public writeFlightLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 529
    :try_start_0
    sget-object v0, Lcom/powervision/base/utils/FlightLogUtil;->mInstance:Lcom/powervision/base/utils/FlightLogUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/utils/FlightLogUtil;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    .line 533
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getAircraftLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getAircraftLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getAircraftOrientation()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getReturnPointLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getReturnPointLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getMileage()F

    move-result v3

    .line 546
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 549
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getMaxHeight()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getStraightDistance()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getAircraftHeight()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getHorizontalSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getVerticalSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getSatellitesNumbers()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getTotalElectricity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getRemainingFlightTime()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getReturnElectricity()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLandingElectricity()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLeftRemoteControlerUpDown()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getRightControlerLeftRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getRightControlerUpDown()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLeftControlerLeftRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getGimbalPitchAngle()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getMaxFlySpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getRemoteControlSingal()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getFlyMode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getFlyControlerElectricity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLastFlyElectricity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getPsnCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getGpsSpeed()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 584
    invoke-static {p1}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/CacheUtil;->writeFlightlogFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
