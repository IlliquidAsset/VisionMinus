.class public Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AirCraftContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;,
        Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirCraftContainerFragme"


# instance fields
.field airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

.field private btn:Landroid/widget/Button;

.field private closeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;

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

.field private selectCount:I

.field private totalDistance:D

.field private trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

.field private viewPager:Lcom/powervision/base/views/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->selectCount:I

    .line 77
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->needTime:I

    const/4 v0, 0x5

    .line 205
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentLength:I

    const/4 v0, 0x2

    .line 206
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->closeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/base/views/NoScrollViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->calculateElectricity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->needTime:I

    return p0
.end method

.method static synthetic access$1102(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->needTime:I

    return p1
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImagePrevious:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageNext:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->selectCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupShootingView:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->topViewChange(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;D)D
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->totalDistance:D

    return-wide p1
.end method

.method private calculateElectricity()V
    .locals 12

    .line 334
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 339
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 340
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->trailData:Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    iget-boolean v3, v3, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->order:Z

    .line 342
    iget v4, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v5, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v6, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    iget v7, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v8, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v9, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    invoke-static/range {v4 .. v9}, Lcom/powervision/map/utils/PositionUtil;->calculateDistance(FFFFFF)F

    move-result v0

    float-to-double v4, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    .line 345
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentInterval:I

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentLength:I

    mul-int v0, v0, v2

    mul-int/lit8 v0, v0, 0x1e

    int-to-double v6, v0

    .line 346
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLastFlyElectricity()I

    move-result v0

    .line 347
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/FlightLogUtil;->getReturnElectricity()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    int-to-double v8, v0

    const-wide/high16 v10, 0x400c000000000000L    # 3.5

    div-double/2addr v8, v10

    double-to-int v0, v8

    .line 350
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/FlightLogUtil;->getRemainingFlightTime()D

    move-result-wide v8

    const-string v2, "\u5f53\u524d\u7535\u91cf\u53ef\u80fd\u65e0\u6cd5\u5b8c\u6210\u62cd\u6444\uff0c\u5efa\u8bae\u8c03\u6574\u62cd\u6444\u65f6\u95f4"

    if-eqz v3, :cond_1

    add-double/2addr v4, v6

    int-to-double v6, v0

    add-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    int-to-double v3, v0

    add-double/2addr v6, v3

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->totalDistance:D

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->needTime:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 362
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    const-string v3, "trail_speed"

    invoke-virtual {v1, v3, v2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const-string v2, "trail_data"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->dataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;
    .locals 1

    .line 80
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;-><init>()V

    return-object v0
.end method

.method private topViewChange(I)V
    .locals 3

    .line 373
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->selectCount:I

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topViewChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftContainerFragme"

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

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_10:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniPickView:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_95_10:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickChange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniPickView:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_95_11:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 93
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_lapse_trail_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "AirCraftContainerFragme"

    const-string v0, "initView: --------------------"

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget v1, Lcom/powervision/aircraft/R$id;->image_previous:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImagePrevious:Landroid/widget/ImageView;

    .line 114
    sget v1, Lcom/powervision/aircraft/R$id;->image_next:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageNext:Landroid/widget/ImageView;

    .line 116
    sget v1, Lcom/powervision/aircraft/R$id;->group_shooting_zoom_in:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Group;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget p1, Lcom/powervision/aircraft/R$id;->group_view_pager_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    .line 119
    sget p1, Lcom/powervision/aircraft/R$id;->group_pick_view_short_zoom_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniPickView:Landroidx/constraintlayout/widget/Group;

    .line 120
    sget p1, Lcom/powervision/aircraft/R$id;->group_shooting_view_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupShootingView:Landroidx/constraintlayout/widget/Group;

    .line 121
    sget p1, Lcom/powervision/aircraft/R$id;->group_pick_view_long:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    .line 124
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_view_long:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickView:Landroid/widget/TextView;

    .line 125
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_change:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickChange:Landroid/widget/TextView;

    .line 126
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_status:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextLongPickStatus:Landroid/widget/TextView;

    .line 127
    sget p1, Lcom/powervision/aircraft/R$id;->image_pick_view_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageLongPickZoomIn:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/powervision/aircraft/R$id;->button:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->btn:Landroid/widget/Button;

    .line 130
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageLongPickZoomIn:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget p1, Lcom/powervision/aircraft/R$id;->text_shooting_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextShootingTime:Landroid/widget/TextView;

    .line 161
    sget p1, Lcom/powervision/aircraft/R$id;->text_shooting_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextShootingNum:Landroid/widget/TextView;

    .line 162
    sget p1, Lcom/powervision/aircraft/R$id;->image_zoom_in:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageShootingZoomIn:Landroid/widget/ImageView;

    .line 165
    sget p1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingTime:Landroid/widget/TextView;

    .line 166
    sget p1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingNum:Landroid/widget/TextView;

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->image_mini_shoot_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    .line 169
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget p1, Lcom/powervision/aircraft/R$id;->image_mini_pick_zoom_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageMiniZoomOut:Landroid/widget/ImageView;

    .line 181
    sget p1, Lcom/powervision/aircraft/R$id;->text_pick_view_short:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniPickView:Landroid/widget/TextView;

    .line 183
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageMiniZoomOut:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$4;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->initViewPager()V

    .line 195
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    const-string v1, "sss"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$5;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public initViewPager()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 263
    invoke-static {}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    .line 264
    new-instance v2, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setOnSelectDataChangeListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;)V

    .line 280
    invoke-static {}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    move-result-object v1

    .line 281
    new-instance v2, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setOrderSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;)V

    .line 288
    new-instance v2, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;)V

    .line 302
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    new-instance v3, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$9;

    invoke-direct {v3, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$9;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v2, v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setSuitableListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;)V

    .line 324
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 326
    sget v1, Lcom/powervision/aircraft/R$id;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 327
    new-instance v4, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;-><init>(Landroidx/fragment/app/FragmentManager;I[Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 328
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/NoScrollViewPager;->setScroll(Z)V

    .line 329
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public isTakingPhotoOver(I)Z
    .locals 1

    .line 224
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentLength:I

    mul-int/lit8 v0, v0, 0x1e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpdatePhotoNumbers(II)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setListener$0$AirCraftContainerFragment(Landroid/view/View;)V
    .locals 2

    .line 435
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$setListener$1$AirCraftContainerFragment(Landroid/view/View;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-string p1, "AirCraftContainerFragme"

    const-string v0, "onAttach: "

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    const-string v0, "AirCraftContainerFragme"

    const-string v1, "onDestroy: "

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const-string v0, "AirCraftContainerFragme"

    const-string v1, "onDetach: "

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    const-string v0, "AirCraftContainerFragme"

    const-string v1, "onPause: "

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCloseListener(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->closeListener:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapseCloseListener;

    return-void
.end method

.method public setCurrentShootingNum(I)V
    .locals 5

    .line 214
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentInterval:I

    .line 215
    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->currentLength:I

    .line 216
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingNum:Landroid/widget/TextView;

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

    .line 217
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mTextMiniShootingTime:Landroid/widget/TextView;

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x1e

    mul-int p1, p1, v0

    sub-int/2addr v1, p1

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 405
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 406
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->viewPager:Lcom/powervision/base/views/NoScrollViewPager;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 435
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImagePrevious:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AirCraftContainerFragment$zm5Qyd0uj-dgmeBVWX97v67odfU;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AirCraftContainerFragment$zm5Qyd0uj-dgmeBVWX97v67odfU;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AirCraftContainerFragment$nRPrxCSdzrGsdQOFfMNck0Ufqbo;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AirCraftContainerFragment$nRPrxCSdzrGsdQOFfMNck0Ufqbo;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startTrailShoot()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopTrajShoot()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupMiniShootingLayout:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupViewPager:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mGroupPickView:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->mImageMiniShootZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
