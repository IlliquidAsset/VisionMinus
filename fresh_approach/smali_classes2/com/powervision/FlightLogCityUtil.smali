.class public Lcom/powervision/FlightLogCityUtil;
.super Ljava/lang/Object;
.source "FlightLogCityUtil.java"


# static fields
.field private static mLogManager:Lcom/powervision/FlightLogCityUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatGcj02ToGaodeLatLng(Landroid/content/Context;DD)[D
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [D

    const/4 v0, 0x0

    aput-wide p1, p0, v0

    const/4 p1, 0x1

    aput-wide p3, p0, p1

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/FlightLogCityUtil;
    .locals 2

    .line 24
    sget-object v0, Lcom/powervision/FlightLogCityUtil;->mLogManager:Lcom/powervision/FlightLogCityUtil;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/powervision/FlightLogCityUtil;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/powervision/FlightLogCityUtil;->mLogManager:Lcom/powervision/FlightLogCityUtil;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/powervision/FlightLogCityUtil;

    invoke-direct {v1}, Lcom/powervision/FlightLogCityUtil;-><init>()V

    sput-object v1, Lcom/powervision/FlightLogCityUtil;->mLogManager:Lcom/powervision/FlightLogCityUtil;

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
    sget-object v0, Lcom/powervision/FlightLogCityUtil;->mLogManager:Lcom/powervision/FlightLogCityUtil;

    return-object v0
.end method


# virtual methods
.method public getLogCityName(Ljava/util/List;Lio/reactivex/ObservableEmitter;Lcom/powervision/base/model/flightlog/FlightLogManager;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/powervision/base/model/flightlog/FlightLogManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "N/A"

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLatitude()D

    move-result-wide v5

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftLongitude()D

    move-result-wide v7

    const/4 v3, 0x1

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    const-wide/16 v3, 0x0

    cmpl-double v9, v5, v3

    if-eqz v9, :cond_4

    cmpl-double v9, v7, v3

    if-nez v9, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p3}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getCitiesNameList()Ljava/util/Map;

    move-result-object v3

    .line 49
    new-instance v4, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, p4, v9}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v9, 0x1

    .line 51
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 52
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 53
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/powervision/FlightLogCityUtil;->getLogCityName(Ljava/util/List;Lio/reactivex/ObservableEmitter;Lcom/powervision/base/model/flightlog/FlightLogManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/powervision/FlightLogCityUtil;->getLogCityName(Ljava/util/List;Lio/reactivex/ObservableEmitter;Lcom/powervision/base/model/flightlog/FlightLogManager;Landroid/content/Context;)V

    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/powervision/FlightLogCityUtil;->getLogCityName(Ljava/util/List;Lio/reactivex/ObservableEmitter;Lcom/powervision/base/model/flightlog/FlightLogManager;Landroid/content/Context;)V

    :goto_2
    return-void
.end method
