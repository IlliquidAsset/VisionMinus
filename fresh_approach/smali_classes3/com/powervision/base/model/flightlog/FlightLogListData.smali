.class public Lcom/powervision/base/model/flightlog/FlightLogListData;
.super Ljava/lang/Object;
.source "FlightLogListData.java"


# instance fields
.field private city:Ljava/lang/String;

.field private date:D

.field private maxHeight:F

.field private meileage:F

.field private time:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->date:D

    return-wide v0
.end method

.method public getMaxHeight()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->maxHeight:F

    return v0
.end method

.method public getMeileage()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->meileage:F

    return v0
.end method

.method public getTime()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->time:D

    return-wide v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->city:Ljava/lang/String;

    return-void
.end method

.method public setDate(D)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->date:D

    return-void
.end method

.method public setMaxHeight(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->maxHeight:F

    return-void
.end method

.method public setMeileage(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->meileage:F

    return-void
.end method

.method public setTime(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FlightLogListData;->time:D

    return-void
.end method
