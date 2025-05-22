.class public Lcom/powervision/gcs/model/FlightHistorys;
.super Ljava/lang/Object;
.source "FlightHistorys.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aircraftid:Ljava/lang/String;

.field private allflightdistance:Ljava/lang/String;

.field private allflighttime:Ljava/lang/String;

.field private deviceid:Ljava/lang/String;

.field private deviceimage:Ljava/lang/String;

.field private devicename:Ljava/lang/String;

.field private historyitem:[Lcom/powervision/gcs/model/HistoryItem;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAircraftid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->aircraftid:Ljava/lang/String;

    return-object v0
.end method

.method public getAllflightdistance()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->allflightdistance:Ljava/lang/String;

    return-object v0
.end method

.method public getAllflighttime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->allflighttime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceimage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->deviceimage:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->devicename:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryitem()[Lcom/powervision/gcs/model/HistoryItem;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->historyitem:[Lcom/powervision/gcs/model/HistoryItem;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/model/FlightHistorys;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setAircraftid(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->aircraftid:Ljava/lang/String;

    return-void
.end method

.method public setAllflightdistance(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->allflightdistance:Ljava/lang/String;

    return-void
.end method

.method public setAllflighttime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->allflighttime:Ljava/lang/String;

    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceimage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->deviceimage:Ljava/lang/String;

    return-void
.end method

.method public setDevicename(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->devicename:Ljava/lang/String;

    return-void
.end method

.method public setHistoryitem([Lcom/powervision/gcs/model/HistoryItem;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->historyitem:[Lcom/powervision/gcs/model/HistoryItem;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/model/FlightHistorys;->userid:Ljava/lang/String;

    return-void
.end method
