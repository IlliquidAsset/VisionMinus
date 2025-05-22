.class public Lcom/powervision/base/utils/UtMissUtils;
.super Ljava/lang/Object;
.source "UtMissUtils.java"


# static fields
.field public static volatile UM_ALTITUDE:F

.field public static volatile UM_COURSE:F

.field public static UM_FLIGHT_TIME:I

.field public static volatile UM_GPS_LATITUDE:D

.field public static volatile UM_GPS_LONGITUDE:D

.field public static volatile UM_GS:F

.field public static volatile UM_HEIGHT:F

.field public static volatile UM_SATELLITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderIdStr(J)Ljava/lang/String;
    .locals 3

    .line 146
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "AP03_ACTIVATION_PSN_CODE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p0, p1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDay(J)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {v2}, Lcom/powervision/base/utils/UtMissUtils;->getRandomNum(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getRandomNum(I)Ljava/lang/String;
    .locals 4

    .line 162
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0xa

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initUmData()V
    .locals 2

    const/4 v0, 0x0

    .line 124
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_FLIGHT_TIME:I

    const-wide/16 v0, 0x0

    .line 126
    sput-wide v0, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LONGITUDE:D

    .line 128
    sput-wide v0, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LATITUDE:D

    const/4 v0, 0x0

    .line 130
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_HEIGHT:F

    .line 132
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_ALTITUDE:F

    .line 134
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_GS:F

    .line 136
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_COURSE:F

    return-void
.end method

.method public static uploadUtMissFlyInfoFun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    sget v1, Lcom/powervision/base/utils/UtMissUtils;->UM_FLIGHT_TIME:I

    add-int/lit8 v1, v1, 0x5

    sput v1, Lcom/powervision/base/utils/UtMissUtils;->UM_FLIGHT_TIME:I

    const-string v1, "OrderID"

    .line 52
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ManufactureID"

    const-string v1, "9111010505555764XB"

    .line 54
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UASID"

    .line 56
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToAllNo(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeStamp"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p1, Lcom/powervision/base/utils/UtMissUtils;->UM_FLIGHT_TIME:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlightTime"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Coordinate"

    const-string v1, "1"

    .line 62
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LONGITUDE:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Longitude"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LATITUDE:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Latitude"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/base/utils/UtMissUtils;->UM_HEIGHT:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Height"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/base/utils/UtMissUtils;->UM_ALTITUDE:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Altitude"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/base/utils/UtMissUtils;->UM_GS:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GS"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/powervision/base/utils/UtMissUtils;->UM_COURSE:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Course"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->getInstance()Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->getUtMissApi()Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;

    move-result-object p1

    .line 78
    invoke-virtual {p0, v0}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->getRequestJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v0}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->getRequestData(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    const-string v0, "application/json"

    .line 80
    invoke-interface {p1, v0, v1, p0}, Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;->utMissUpload(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 83
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 84
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/powervision/base/utils/UtMissUtils$1;

    invoke-direct {p1}, Lcom/powervision/base/utils/UtMissUtils$1;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
