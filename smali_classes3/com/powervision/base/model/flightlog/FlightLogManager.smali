.class public Lcom/powervision/base/model/flightlog/FlightLogManager;
.super Ljava/lang/Object;
.source "FlightLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;
    }
.end annotation


# static fields
.field private static final Tag:Ljava/lang/String; = "FlightLogManager"

.field private static mLogManager:Lcom/powervision/base/model/flightlog/FlightLogManager;


# instance fields
.field private allTimeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheUtil:Lcom/powervision/base/utils/CacheUtil;

.field citiesNameList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyPsnDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mLocalCsvDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLocalCsvFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCvsDatasLoadOverListener:Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;

.field private mPagerDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPagerOtherDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mShareFlightlogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation
.end field

.field private matchPsnDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private oneMonthTimeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pagerItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;",
            ">;"
        }
    .end annotation
.end field

.field private sixMonthTimeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitchPagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->whitchPagerList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->matchPsnDataList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mShareFlightlogList:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->allTimeDataList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->oneMonthTimeDataList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->sixMonthTimeDataList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->citiesNameList:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;Ljava/lang/String;J)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getDifferentDateList(Ljava/util/List;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/base/model/flightlog/FlightLogManager;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getDataTypeCount(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/base/model/flightlog/FlightLogManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->preparePagerListData()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/base/model/flightlog/FlightLogManager;)Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mOnCvsDatasLoadOverListener:Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;

    return-object p0
.end method

.method private bubbleSort([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 9

    .line 509
    array-length v0, p1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_1

    .line 512
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_0

    .line 513
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 514
    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 515
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v5

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getDataTypeCount(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 228
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getPsnCode()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 233
    iget-object p2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->matchPsnDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->mismatchPsnCode(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object p2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_2
    iget-object p2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private getDifferentDateList(Ljava/util/List;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    long-to-double p3, p3

    .line 262
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    sub-double/2addr p3, v0

    double-to-long p3, p3

    const-wide/32 v0, 0x278d00

    cmp-long p1, p3, v0

    if-gez p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->oneMonthTimeDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/32 v0, 0xed4e00

    cmp-long p1, p3, v0

    if-gez p1, :cond_1

    .line 267
    iget-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->sixMonthTimeDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->allTimeDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;
    .locals 2

    .line 45
    sget-object v0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLogManager:Lcom/powervision/base/model/flightlog/FlightLogManager;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/powervision/base/model/flightlog/FlightLogManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLogManager:Lcom/powervision/base/model/flightlog/FlightLogManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-direct {v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;-><init>()V

    sput-object v1, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLogManager:Lcom/powervision/base/model/flightlog/FlightLogManager;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLogManager:Lcom/powervision/base/model/flightlog/FlightLogManager;

    return-object v0
.end method

.method private getMaxFlyHeight(Ljava/util/List;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;F)F"
        }
    .end annotation

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 347
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMaxHeight()F

    move-result p1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method private getMaxFlySpeed(Ljava/util/List;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;F)F"
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 356
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMaxFlySpeed()F

    move-result p1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method private getMaxLongMileage(Ljava/util/List;F)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;F)F"
        }
    .end annotation

    .line 329
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 330
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 331
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v1

    .line 332
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v0

    .line 334
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p1

    cmpl-float v2, v0, p1

    if-lez v2, :cond_0

    sub-float v1, v0, p1

    :cond_0
    cmpl-float p1, v1, p2

    if-lez p1, :cond_1

    move p2, v1

    :cond_1
    return p2
.end method

.method private getMaxMileage(Ljava/util/List;F)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;F)F"
        }
    .end annotation

    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v0

    .line 375
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 376
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 377
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 378
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v1

    .line 379
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sub-float v0, p1, v1

    :cond_0
    add-float/2addr p2, v0

    return p2
.end method

.method private getMaxTime(Ljava/util/List;D)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;D)D"
        }
    .end annotation

    const/4 v0, 0x1

    .line 364
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 365
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 366
    invoke-virtual {v1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    .line 367
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v2

    sub-double/2addr v2, v0

    add-double/2addr p2, v2

    return-wide p2
.end method

.method private mismatchPsnCode(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->whitchPagerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->whitchPagerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    iget-object p2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private parseLocalCvsFilesToList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 179
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "AP03_ACTIVATION_PSN_CODE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    new-instance v0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/powervision/base/model/flightlog/FlightLogManager$1;-><init>(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;JLjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 203
    new-instance v0, Lcom/powervision/base/model/flightlog/FlightLogManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/base/model/flightlog/FlightLogManager$2;-><init>(Lcom/powervision/base/model/flightlog/FlightLogManager;)V

    .line 220
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private preparePagerListData()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->matchPsnDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->matchPsnDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 287
    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getPagerItemDetialData(Ljava/util/List;)Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 289
    iget-object v2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public cleanAllFiles()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvFileNameList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->cacheUtil:Lcom/powervision/base/utils/CacheUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 461
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->loadLocalFlightLogs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCitiesNameList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->citiesNameList:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrentFlightlogFileData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mShareFlightlogList:Ljava/util/List;

    return-object v0
.end method

.method public getDetialListData(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;I)",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    if-ltz p2, :cond_0

    .line 130
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFlightLogRootDir()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->cacheUtil:Lcom/powervision/base/utils/CacheUtil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCsvDataList()Ljava/util/List;
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

    .line 121
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    return-object v0
.end method

.method public getPagerIndexData(I)Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPagerItemDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    return-object v0
.end method

.method public getPagerItemDetialData(Ljava/util/List;)Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;)",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    new-instance v0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    invoke-direct {v0}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;-><init>()V

    .line 299
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setLogDatalist(Ljava/util/List;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 307
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 308
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v4}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getMaxMileage(Ljava/util/List;F)F

    move-result v4

    .line 309
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v2, v3}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getMaxTime(Ljava/util/List;D)D

    move-result-wide v2

    .line 310
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v5}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getMaxLongMileage(Ljava/util/List;F)F

    move-result v5

    .line 311
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v6}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getMaxFlyHeight(Ljava/util/List;F)F

    move-result v6

    .line 312
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v7}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getMaxFlySpeed(Ljava/util/List;F)F

    move-result v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setMaxFlyCount(I)V

    float-to-double v8, v4

    .line 316
    invoke-virtual {v0, v8, v9}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setMaxMileage(D)V

    .line 317
    invoke-virtual {v0, v2, v3}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setMaxTime(D)V

    float-to-double v1, v5

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setSingleMaxMileage(D)V

    .line 320
    invoke-virtual {v0, v6}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setMaxStartFlyHeight(F)V

    .line 322
    invoke-virtual {v0, v7}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setMaxFlySpeed(F)V

    .line 323
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setLogDatalist(Ljava/util/List;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getmLocalCsvFileNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvFileNameList:Ljava/util/List;

    return-object v0
.end method

.method public hasNextData(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 149
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public loadLocalFlightLogs(Landroid/content/Context;)V
    .locals 1

    .line 163
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {p1}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->cacheUtil:Lcom/powervision/base/utils/CacheUtil;

    .line 165
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->cacheUtil:Lcom/powervision/base/utils/CacheUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->resetAllCsvData()V

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    .line 171
    iget-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->cacheUtil:Lcom/powervision/base/utils/CacheUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/model/flightlog/CsvUtils;->getFileAbsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvFileNameList:Ljava/util/List;

    .line 172
    invoke-direct {p0, p1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->parseLocalCvsFilesToList(Ljava/util/List;)V

    return-void
.end method

.method public prepareListItemDatas(Ljava/util/List;)Lcom/powervision/base/model/flightlog/FlightLogListData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;)",
            "Lcom/powervision/base/model/flightlog/FlightLogListData;"
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/powervision/base/model/flightlog/FlightLogListData;

    invoke-direct {v0}, Lcom/powervision/base/model/flightlog/FlightLogListData;-><init>()V

    const/4 v1, 0x1

    .line 391
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 394
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v1

    .line 395
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    sub-float/2addr v3, v1

    .line 400
    :cond_0
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v4

    .line 401
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v6

    sub-double v4, v6, v4

    .line 404
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMaxHeight()F

    move-result p1

    .line 405
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v6, v7}, Lcom/powervision/base/model/flightlog/FlightLogListData;->setDate(D)V

    .line 408
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogListData;->setCity(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, v3}, Lcom/powervision/base/model/flightlog/FlightLogListData;->setMeileage(F)V

    .line 410
    invoke-virtual {v0, v4, v5}, Lcom/powervision/base/model/flightlog/FlightLogListData;->setTime(D)V

    .line 411
    invoke-virtual {v0, p1}, Lcom/powervision/base/model/flightlog/FlightLogListData;->setMaxHeight(F)V

    return-object v0
.end method

.method public recycleBitmap()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mCacheBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public resetAllCsvData()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->pagerItemDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->matchPsnDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 423
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->emptyPsnDataList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 426
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerOtherDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 429
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mPagerDataList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 432
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->whitchPagerList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 435
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    :cond_6
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mShareFlightlogList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 438
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->allTimeDataList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 441
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->oneMonthTimeDataList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 444
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->sixMonthTimeDataList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 447
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    :cond_a
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mLocalCsvFileNameList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 450
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    :cond_b
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->citiesNameList:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 454
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_c
    return-void
.end method

.method public setCacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCurrentFlightlogFileData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mShareFlightlogList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setOnCvsDatasLoadOverListener(Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager;->mOnCvsDatasLoadOverListener:Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;

    return-void
.end method

.method public sortCsvAllFiles(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 467
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".1111...fileAbsList.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sort_f_Name"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ".CSV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "NewVisionPlus/FlightLog/FlightRecord_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 476
    aget-object v5, v5, v6

    .line 477
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "-"

    .line 478
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 479
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v4}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 482
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    .line 492
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 494
    invoke-direct {p0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->bubbleSort([Ljava/lang/Long;)[Ljava/lang/Long;

    move-result-object v1

    .line 495
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 497
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 498
    aget-object v3, v1, v2

    .line 499
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
