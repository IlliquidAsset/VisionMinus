.class public Lcom/powervision/gcs/utils/FlightRecordsUtil;
.super Ljava/lang/Object;
.source "FlightRecordsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureImage2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CaptureImage;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/model/CaptureImage;

    :try_start_0
    const-string v4, "imgUrl"

    .line 67
    invoke-virtual {v3}, Lcom/powervision/gcs/model/CaptureImage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static flightPositions2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/FlightRecordsPosition;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/model/FlightRecordsPosition;

    :try_start_0
    const-string v4, "longitude"

    .line 42
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "latitude"

    .line 43
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "altitude"

    .line 44
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getAltitude()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "gimbalPitch"

    .line 45
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getGimbalPitch()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "gimbalRoll"

    .line 46
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getGimbalRoll()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "gimbalYaw"

    .line 47
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getGimbalYaw()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "aircraftPitch"

    .line 48
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getAircraftPitch()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "aircraftRoll"

    .line 49
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getAircraftRoll()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "aircraftYaw"

    .line 50
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getAircraftYaw()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "specialOperation"

    .line 51
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getSpecialOperation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "positionTime"

    .line 52
    invoke-virtual {v3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->getPositionTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 55
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static flightRecord2JSONObject(Lcom/powervision/gcs/model/FlightRecordsItem;)Lorg/json/JSONObject;
    .locals 4

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "flightTime"

    .line 79
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getFlightTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "longVideo"

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getLongVideo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isCollection"

    .line 81
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->isCollection()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flightDate"

    .line 82
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getFlightDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 83
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aircraftId"

    .line 84
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getAircraftId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cameraCounts"

    .line 85
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getCameraCounts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flightPosition"

    .line 86
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getFlightPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cityName"

    .line 87
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "maxAltitude"

    .line 88
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getMaxAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flightDistance"

    .line 89
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getFlightDistance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "captureImages"

    .line 90
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getCaptureImages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/gcs/utils/FlightRecordsUtil;->captureImage2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flightPositions"

    .line 91
    invoke-virtual {p0}, Lcom/powervision/gcs/model/FlightRecordsItem;->getFlightPositions()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/gcs/utils/FlightRecordsUtil;->flightPositions2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static recordFlightPositions(DDDDDDDDDLjava/lang/String;Ljava/lang/String;)Lcom/powervision/gcs/model/FlightRecordsPosition;
    .locals 3

    .line 21
    new-instance v0, Lcom/powervision/gcs/model/FlightRecordsPosition;

    invoke-direct {v0}, Lcom/powervision/gcs/model/FlightRecordsPosition;-><init>()V

    move-wide v1, p2

    .line 22
    invoke-virtual {v0, p2, p3}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setLatitude(D)V

    move-wide v1, p0

    .line 23
    invoke-virtual {v0, p0, p1}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setLongitude(D)V

    move-wide v1, p4

    .line 24
    invoke-virtual {v0, p4, p5}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setAltitude(D)V

    move-wide v1, p6

    .line 25
    invoke-virtual {v0, p6, p7}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setGimbalPitch(D)V

    move-wide v1, p8

    .line 26
    invoke-virtual {v0, p8, p9}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setGimbalRoll(D)V

    move-wide v1, p10

    .line 27
    invoke-virtual {v0, p10, p11}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setGimbalYaw(D)V

    move-wide v1, p12

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setAircraftPitch(D)V

    move-wide/from16 v1, p14

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setAircraftRoll(D)V

    move-wide/from16 v1, p16

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setAircraftYaw(D)V

    move-object/from16 v1, p18

    .line 31
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setSpecialOperation(Ljava/lang/String;)V

    move-object/from16 v1, p19

    .line 32
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/model/FlightRecordsPosition;->setPositionTime(Ljava/lang/String;)V

    return-object v0
.end method
