.class public Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AirCraftLapseTrailCaptureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;,
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/aircraft/presenter/impl/TrailCapturePresenter;",
        "Lcom/powervision/aircraft/model/impl/TrailCaptureModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirCraftLapseTrailCaptu"


# instance fields
.field private angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

.field private current_status:I

.field private hasMove:Z

.field private interval:I

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mAdapter:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

.field private matchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxVideoLength:I

.field private nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

.field private onSelectDataChangeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

.field private order:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private resultInterval:I

.field private resultVideoLength:I

.field private suitableListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

.field private totalDistance:D

.field private trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

.field private trailDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;",
            ">;"
        }
    .end annotation
.end field

.field private videoLength:I

.field private videoLengthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->interval:I

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->videoLength:I

    const/16 v0, 0xf

    .line 54
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->maxVideoLength:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->hasMove:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->current_status:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->onSelectDataChangeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->interval:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/NedPositionInfo;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->videoLength:I

    return p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->deleteOne(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->moveAngle(Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)D
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->moveDistance(Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/AngleInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/AngleInfo;)Lcom/powervision/aircraft/lapse/data/AngleInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mAdapter:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->totalDistance:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;D)D
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->totalDistance:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->current_status:I

    return p0
.end method

.method static synthetic access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->current_status:I

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->suitableListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    return-object p0
.end method

.method private deleteOne(I)V
    .locals 11

    .line 221
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    iput-object v0, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    const/4 p1, 0x0

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    if-lez p1, :cond_1

    .line 229
    iget-wide v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->totalDistance:D

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    .line 230
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v5, v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    .line 231
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v6, v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v7, v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    iget v8, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v9, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v10, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    .line 230
    invoke-static/range {v5 .. v10}, Lcom/powervision/map/utils/PositionUtil;->calculateDistance(FFFFFF)F

    move-result v0

    float-to-double v3, v0

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->totalDistance:D

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->onSelectDataChangeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    iget-wide v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->totalDistance:D

    invoke-interface {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;->getTrailData(Lcom/powervision/aircraft/lapse/data/LapseTrailData;D)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private moveAngle(Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)I
    .locals 6

    .line 334
    iget p1, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->yaw:F

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v4

    double-to-float p1, v0

    .line 335
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {v0}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->getYaw()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr v0, v2

    mul-double v0, v0, v4

    double-to-float v0, v0

    float-to-int p1, p1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 336
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method private moveDistance(Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)D
    .locals 6

    .line 321
    iget v0, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v1, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v2, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iget v3, p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->x:F

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iget v4, p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->y:F

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iget v5, p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->z:F

    invoke-static/range {v0 .. v5}, Lcom/powervision/map/utils/PositionUtil;->calculateDistance(FFFFFF)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public static newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;
    .locals 1

    .line 70
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mAdapter:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/powervision/aircraft/model/impl/TrailCaptureModel;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/impl/TrailCaptureModel;->getBeginningData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->setData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 101
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_lapse_trail_capture_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailDataList:Ljava/util/List;

    .line 253
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getLapseVideoLength()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->videoLengthList:Ljava/util/List;

    .line 254
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getVideoLengthMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->matchMap:Ljava/util/HashMap;

    .line 256
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    const-string v2, "ned_local_position"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 262
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/AngleInfo;

    const-string v2, "angle_model"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    sget p1, Lcom/powervision/aircraft/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/aircraft/ui/view/decoration/LapseDecoration;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/view/decoration/LapseDecoration;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    new-instance p1, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/aircraft/model/impl/TrailCaptureModel;

    invoke-virtual {v0}, Lcom/powervision/aircraft/model/impl/TrailCaptureModel;->getBeginningData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mAdapter:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    new-instance p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    invoke-direct {p1}, Lcom/powervision/aircraft/lapse/data/LapseTrailData;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    .line 112
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mAdapter:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->setOnItemClickListener(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-string p1, "AirCraftLapseTrailCaptu"

    const-string v0, "onAttach: "

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    const-string v0, "AirCraftLapseTrailCaptu"

    const-string v1, "onDestroy: "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-string v0, "AirCraftLapseTrailCaptu"

    const-string v1, "onDetach: "

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const-string v0, "AirCraftLapseTrailCaptu"

    const-string v1, "onResume: "

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataSelect(II)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->interval:I

    .line 347
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->videoLength:I

    return-void
.end method

.method public setOnSelectDataChangeListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->onSelectDataChangeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    .line 356
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->order:I

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrder:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftLapseTrailCaptu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->order:Z

    return-void
.end method

.method public setSuitableListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->suitableListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    return-void
.end method
