.class public Lcom/powervision/map/manager/FlightLogLatLonImp;
.super Ljava/lang/Object;
.source "FlightLogLatLonImp.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03LocationListener;


# static fields
.field private static volatile mInstance:Lcom/powervision/map/manager/FlightLogLatLonImp;


# instance fields
.field oldLat:D

.field oldLng:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addLocationListener(Lcom/powervision/sdk/callback/Ap03LocationListener;)V

    return-void
.end method

.method public static getInstance()Lcom/powervision/map/manager/FlightLogLatLonImp;
    .locals 2

    .line 24
    sget-object v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->mInstance:Lcom/powervision/map/manager/FlightLogLatLonImp;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/powervision/map/manager/FlightLogLatLonImp;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/powervision/map/manager/FlightLogLatLonImp;->mInstance:Lcom/powervision/map/manager/FlightLogLatLonImp;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/powervision/map/manager/FlightLogLatLonImp;

    invoke-direct {v1}, Lcom/powervision/map/manager/FlightLogLatLonImp;-><init>()V

    sput-object v1, Lcom/powervision/map/manager/FlightLogLatLonImp;->mInstance:Lcom/powervision/map/manager/FlightLogLatLonImp;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->mInstance:Lcom/powervision/map/manager/FlightLogLatLonImp;

    return-object v0
.end method

.method private setDeviceLogData(DD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    cmpl-double v16, v9, v14

    if-eqz v16, :cond_2

    cmpl-double v1, v11, v14

    if-eqz v1, :cond_2

    .line 67
    iget-wide v5, v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->oldLat:D

    cmpl-double v1, v5, v14

    if-eqz v1, :cond_2

    iget-wide v7, v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->oldLng:D

    cmpl-double v1, v7, v14

    if-eqz v1, :cond_2

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 68
    invoke-static/range {v1 .. v8}, Lcom/powervision/map/utils/PositionUtil;->getDistance(DDDD)D

    move-result-wide v1

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    :cond_0
    move-wide v1, v14

    .line 73
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v3

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMileage(F)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/powervision/base/utils/FlightLogUtil;->setMileage(F)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLatitude()D

    move-result-wide v5

    .line 79
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLongitude()D

    move-result-wide v7

    if-eqz v16, :cond_3

    cmpl-double v1, v11, v14

    if-eqz v1, :cond_3

    cmpl-double v1, v5, v14

    if-eqz v1, :cond_3

    cmpl-double v1, v7, v14

    if-eqz v1, :cond_3

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 81
    invoke-static/range {v1 .. v8}, Lcom/powervision/map/utils/PositionUtil;->getDistance(DDDD)D

    move-result-wide v1

    .line 84
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v3

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setStraightDistance(F)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/powervision/base/utils/FlightLogUtil;->setStraightDistance(F)V

    .line 88
    :goto_1
    iput-wide v9, v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->oldLat:D

    .line 89
    iput-wide v11, v0, Lcom/powervision/map/manager/FlightLogLatLonImp;->oldLng:D

    return-void
.end method

.method private setFlightLogDeviceLatlng(III)V
    .locals 5

    int-to-double v0, p1

    .line 40
    invoke-static {v0, v1}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double v2, p2

    .line 41
    invoke-static {v2, v3}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v2

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ap03.........setFlightLogDeviceLatlng .........lat="

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lon ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "get_lat_lon"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setAircraftLatitude(D)V

    .line 48
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/powervision/base/utils/FlightLogUtil;->setAircraftLongitude(D)V

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/powervision/map/manager/FlightLogLatLonImp;->setDeviceLogData(DD)V

    return-void
.end method


# virtual methods
.method public getGpsLocation(III)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/map/manager/FlightLogLatLonImp;->setFlightLogDeviceLatlng(III)V

    return-void
.end method
