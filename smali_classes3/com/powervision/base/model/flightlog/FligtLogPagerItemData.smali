.class public Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;
.super Ljava/lang/Object;
.source "FligtLogPagerItemData.java"


# instance fields
.field private cityName:Ljava/lang/String;

.field private deviecName:Ljava/lang/String;

.field public logDatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxFlyCount:I

.field private maxFlySpeed:F

.field private maxMileage:D

.field private maxStartFlyHeight:F

.field private maxTime:D

.field private singleMaxMileage:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N/A"

    .line 47
    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->cityName:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->logDatalist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDILjava/lang/String;DFF)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N/A"

    .line 47
    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->cityName:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->logDatalist:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->deviecName:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxTime:D

    .line 20
    iput-wide p4, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxMileage:D

    .line 21
    iput p6, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlyCount:I

    .line 22
    iput-object p7, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->cityName:Ljava/lang/String;

    .line 23
    iput-wide p8, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->singleMaxMileage:D

    .line 24
    iput p10, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxStartFlyHeight:F

    .line 25
    iput p11, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlySpeed:F

    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogDatalist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->logDatalist:Ljava/util/List;

    return-object v0
.end method

.method public getMaxFlyCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlyCount:I

    return v0
.end method

.method public getMaxFlySpeed()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlySpeed:F

    return v0
.end method

.method public getMaxMileage()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxMileage:D

    return-wide v0
.end method

.method public getMaxStartFlyHeight()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxStartFlyHeight:F

    return v0
.end method

.method public getMaxTime()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxTime:D

    return-wide v0
.end method

.method public getSingleMaxMileage()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->singleMaxMileage:D

    return-wide v0
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setLogDatalist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->logDatalist:Ljava/util/List;

    return-void
.end method

.method public setMaxFlyCount(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlyCount:I

    return-void
.end method

.method public setMaxFlySpeed(F)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxFlySpeed:F

    return-void
.end method

.method public setMaxMileage(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxMileage:D

    return-void
.end method

.method public setMaxStartFlyHeight(F)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxStartFlyHeight:F

    return-void
.end method

.method public setMaxTime(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->maxTime:D

    return-void
.end method

.method public setSingleMaxMileage(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->singleMaxMileage:D

    return-void
.end method
