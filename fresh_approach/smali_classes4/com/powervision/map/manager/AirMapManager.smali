.class public final Lcom/powervision/map/manager/AirMapManager;
.super Ljava/lang/Object;
.source "AirMapManager.java"


# static fields
.field private static volatile sAirMapManager:Lcom/powervision/map/manager/AirMapManager;


# instance fields
.field private aircraftLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

.field private mAirMapApi:Lcom/powervision/map/inter/AirMapApi;

.field private unLockLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

.field private userLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v0

    const-class v1, Lcom/powervision/map/inter/AirMapApi;

    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/net/RetrofitUtil;->getGsonService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/map/inter/AirMapApi;

    iput-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->mAirMapApi:Lcom/powervision/map/inter/AirMapApi;

    .line 25
    new-instance v0, Lcom/powervision/sdk/dto/MapLocationDto;

    invoke-direct {v0}, Lcom/powervision/sdk/dto/MapLocationDto;-><init>()V

    iput-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->userLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    .line 26
    new-instance v0, Lcom/powervision/sdk/dto/MapLocationDto;

    invoke-direct {v0}, Lcom/powervision/sdk/dto/MapLocationDto;-><init>()V

    iput-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->aircraftLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-void
.end method

.method public static getInstance()Lcom/powervision/map/manager/AirMapManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/powervision/map/manager/AirMapManager;->sAirMapManager:Lcom/powervision/map/manager/AirMapManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/powervision/map/manager/AirMapManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/powervision/map/manager/AirMapManager;->sAirMapManager:Lcom/powervision/map/manager/AirMapManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/powervision/map/manager/AirMapManager;

    invoke-direct {v1}, Lcom/powervision/map/manager/AirMapManager;-><init>()V

    sput-object v1, Lcom/powervision/map/manager/AirMapManager;->sAirMapManager:Lcom/powervision/map/manager/AirMapManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/map/manager/AirMapManager;->sAirMapManager:Lcom/powervision/map/manager/AirMapManager;

    return-object v0
.end method


# virtual methods
.method public getAirMapApi()Lcom/powervision/map/inter/AirMapApi;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->mAirMapApi:Lcom/powervision/map/inter/AirMapApi;

    return-object v0
.end method

.method public getAircraftLocationDto()Lcom/powervision/sdk/dto/MapLocationDto;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->aircraftLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-object v0
.end method

.method public getUnLockLocationDto()Lcom/powervision/sdk/dto/MapLocationDto;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->unLockLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-object v0
.end method

.method public getUserLocationDto()Lcom/powervision/sdk/dto/MapLocationDto;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/map/manager/AirMapManager;->userLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-object v0
.end method

.method public setAircraftLocationDto(Lcom/powervision/sdk/dto/MapLocationDto;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/map/manager/AirMapManager;->aircraftLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-void
.end method

.method public setUnLockLocationDto(Lcom/powervision/sdk/dto/MapLocationDto;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/map/manager/AirMapManager;->unLockLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-void
.end method

.method public setUserLocationDto(Lcom/powervision/sdk/dto/MapLocationDto;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/map/manager/AirMapManager;->userLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    return-void
.end method
