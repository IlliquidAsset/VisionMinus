.class public Lcom/powervision/aircraft/ui/views/AirLapseTrailView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AirLapseTrailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseOrderListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseSelectListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapsePager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirLapseTrailView"


# instance fields
.field airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

.field private btn:Landroid/widget/Button;

.field private closeListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;

.field private currentInterval:I

.field private currentLength:I

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

.field private mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

.field private mGroupPickView:Landroidx/constraintlayout/widget/Group;

.field private mGroupShootingView:Landroidx/constraintlayout/widget/Group;

.field private mGroupViewPager:Landroidx/constraintlayout/widget/Group;

.field private mImageDot:Landroid/widget/ImageView;

.field private mImageLongPickZoomIn:Landroid/widget/ImageView;

.field private mImageMiniShootZoomOut:Landroid/widget/ImageView;

.field private mImageMiniZoomOut:Landroid/widget/ImageView;

.field private mImageNext:Landroid/widget/ImageView;

.field private mImagePrevious:Landroid/widget/ImageView;

.field private mImageShootingZoomIn:Landroid/widget/ImageView;

.field private mTextLongPickChange:Landroid/widget/TextView;

.field private mTextLongPickStatus:Landroid/widget/TextView;

.field private mTextLongPickView:Landroid/widget/TextView;

.field private mTextMiniPickView:Landroid/widget/TextView;

.field private mTextMiniShootingNum:Landroid/widget/TextView;

.field private mTextMiniShootingTime:Landroid/widget/TextView;

.field private mTextShootingNum:Landroid/widget/TextView;

.field private mTextShootingTime:Landroid/widget/TextView;

.field private needTime:I

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field private selectCount:I

.field private selectListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseSelectListener;

.field private speedListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseOrderListener;

.field private totalDistance:D

.field private trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

.field private viewPager:Lcom/powervision/base/views/NoScrollViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->selectCount:I

    .line 78
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->needTime:I

    const/4 p2, 0x2

    .line 254
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentLength:I

    const/4 p2, 0x1

    .line 255
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentInterval:I

    .line 91
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->init(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->closeListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->selectCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->calculateElectricity()V

    return-void
.end method

.method static synthetic access$1102(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentInterval:I

    return p1
.end method

.method static synthetic access$1202(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentLength:I

    return p1
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->needTime:I

    return p0
.end method

.method static synthetic access$1302(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->needTime:I

    return p1
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImagePrevious:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageNext:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupShootingView:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->topViewChange(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;Lcom/powervision/aircraft/lapse/data/LapseTrailData;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    return-object p1
.end method

.method static synthetic access$802(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;D)D
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->totalDistance:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    return-object p1
.end method

.method private calculateElectricity()V
    .locals 10

    .line 363
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 368
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 369
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    iget-boolean v3, v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->order:Z

    .line 371
    iget v4, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v5, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v6, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    iget v7, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v8, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v9, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    invoke-static/range {v4 .. v9}, Lcom/powervision/map/utils/PositionUtil;->calculateDistance(FFFFFF)F

    .line 375
    iget-wide v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->totalDistance:D

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    .line 376
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLastFlyElectricity()I

    move-result v0

    .line 377
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/base/utils/FlightLogUtil;->getReturnElectricity()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    int-to-double v4, v0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 381
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/base/utils/FlightLogUtil;->getRemainingFlightTime()D

    move-result-wide v4

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u524d\u98de\u673a\u53ef\u652f\u6301\u7684\u6700\u5927\u98de\u884c\u65f6\u95f4 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u603b\u8ddd\u79bb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->totalDistance:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", \u62cd\u6444\u65f6\u95f4 t2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", t3 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    int-to-double v6, v0

    add-double/2addr v2, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "\u8f68\u8ff9\u8c03\u6574\u53d6\u666f\u70b9\u63d0\u793a"

    .line 390
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_AI_95_12:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    :cond_1
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->totalDistance:D

    iget v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->needTime:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 396
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    const-string v3, "trail_speed"

    invoke-virtual {v1, v3, v2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 397
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    const-string v2, "trail_data"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 399
    invoke-virtual {v1}, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_lapse_trail_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-string p1, "AirLapseTrailView"

    const-string v0, "initView: --------------------"

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget p1, Lcom/powervision/aircraft/R$id;->image_previous:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImagePrevious:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/powervision/aircraft/R$id;->image_next:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageNext:Landroid/widget/ImageView;

    .line 102
    sget p1, Lcom/powervision/aircraft/R$id;->group_shooting_zoom_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    .line 103
    sget p1, Lcom/powervision/aircraft/R$id;->group_view_pager_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    .line 104
    sget p1, Lcom/powervision/aircraft/R$id;->group_pick_view_short_zoom_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    .line 105
    sget p1, Lcom/powervision/aircraft/R$id;->group_shooting_view_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupShootingView:Landroidx/constraintlayout/widget/Group;

    .line 106
    sget p1, Lcom/powervision/aircraft/R$id;->group_pick_view_long:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    .line 109
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_view_long:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    .line 110
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_change:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickChange:Landroid/widget/TextView;

    .line 111
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_status:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickStatus:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/powervision/aircraft/R$id;->image_pick_view_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageLongPickZoomIn:Landroid/widget/ImageView;

    .line 114
    sget p1, Lcom/powervision/aircraft/R$id;->button:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->btn:Landroid/widget/Button;

    .line 115
    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageLongPickZoomIn:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget p1, Lcom/powervision/aircraft/R$id;->text_shooting_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextShootingTime:Landroid/widget/TextView;

    .line 146
    sget p1, Lcom/powervision/aircraft/R$id;->text_shooting_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextShootingNum:Landroid/widget/TextView;

    .line 147
    sget p1, Lcom/powervision/aircraft/R$id;->image_zoom_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageShootingZoomIn:Landroid/widget/ImageView;

    .line 150
    sget p1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingTime:Landroid/widget/TextView;

    .line 151
    sget p1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingNum:Landroid/widget/TextView;

    .line 152
    sget p1, Lcom/powervision/aircraft/R$id;->image_mini_shoot_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    .line 153
    sget p1, Lcom/powervision/aircraft/R$id;->image_dot:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageDot:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget p1, Lcom/powervision/aircraft/R$id;->image_mini_pick_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniZoomOut:Landroid/widget/ImageView;

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_view_short:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniPickView:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniZoomOut:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$4;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$4;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initViewPager()V

    .line 180
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initAnimation()V

    return-void
.end method

.method private initAnimation()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageDot:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    .line 187
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 189
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x960

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initViewPager()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 286
    invoke-static {}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    .line 287
    new-instance v2, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setOnSelectDataChangeListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;)V

    .line 305
    invoke-static {}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    move-result-object v1

    .line 306
    new-instance v2, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setOrderSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;)V

    .line 313
    new-instance v2, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;)V

    .line 331
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    new-instance v3, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;

    invoke-direct {v3, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v2, v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setSuitableListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;)V

    .line 353
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 355
    sget v1, Lcom/powervision/aircraft/R$id;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 356
    new-instance v4, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapsePager;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapsePager;-><init>(Landroidx/fragment/app/FragmentManager;I[Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 357
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/NoScrollViewPager;->setScroll(Z)V

    .line 358
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    new-instance v1, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$9;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$9;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 469
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImagePrevious:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseTrailView$sp4WL88ay37e6bewtq6LiHsCO14;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseTrailView$sp4WL88ay37e6bewtq6LiHsCO14;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseTrailView$HXM3tusCwqXFdGRu3B0cwFpJ0cA;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseTrailView$HXM3tusCwqXFdGRu3B0cwFpJ0cA;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private topViewChange(I)V
    .locals 3

    .line 409
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->selectCount:I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topViewChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirLapseTrailView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_10:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniPickView:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_95_10:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniPickView:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPhotoNum()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentLength:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public isTakingPhotoOver(I)Z
    .locals 1

    .line 277
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentLength:I

    mul-int/lit8 v0, v0, 0x1e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$setListener$0$AirLapseTrailView(Landroid/view/View;)V
    .locals 2

    .line 469
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$setListener$1$AirLapseTrailView(Landroid/view/View;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public resetData()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    :cond_1
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    const-string v3, "trail_data"

    invoke-virtual {v0, v3, v2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string v0, "AirLapseTrailView"

    const-string v1, "resetData: ----"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->topViewChange(I)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setCurrentShootingNum(I)V

    return-void
.end method

.method public resetView()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->stopTrailShoot()V

    return-void
.end method

.method public setCloseListener(Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->closeListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;

    return-void
.end method

.method public setCurrentShootingNum(I)V
    .locals 5

    .line 263
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentInterval:I

    .line 264
    iget v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->currentLength:I

    .line 265
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x1e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mTextMiniShootingTime:Landroid/widget/TextView;

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x1e

    mul-int p1, p1, v0

    sub-int/2addr v1, p1

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectListener(Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseSelectListener;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->selectListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseSelectListener;

    return-void
.end method

.method public setSpeedListener(Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseOrderListener;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->speedListener:Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseOrderListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetData()V

    .line 229
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initViewPager()V

    .line 233
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility: ------------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirLapseTrailView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTrailShoot()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageDot:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public stopTrailShoot()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 205
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageDot:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(I)V

    .line 212
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->mImagePrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->clearAll()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetData()V

    return-void
.end method
