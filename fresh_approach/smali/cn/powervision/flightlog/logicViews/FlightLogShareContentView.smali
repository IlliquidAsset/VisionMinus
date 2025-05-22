.class public Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;
.super Landroid/widget/RelativeLayout;
.source "FlightLogShareContentView.java"


# instance fields
.field private Tag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public fullPath:Ljava/lang/String;

.field private isSaveImage:Z

.field private mBitmapView:Landroid/widget/RelativeLayout;

.field private mCityTv:Landroid/widget/TextView;

.field private mDateTv:Landroid/widget/TextView;

.field private mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

.field private mFlyTimeTv:Landroid/widget/TextView;

.field private mMaxMileageTv:Landroid/widget/TextView;

.field private mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mUserIcon:Landroid/widget/ImageView;

.field private mUserNameTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FlightLogShareContentView"

    .line 38
    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    const-string v0, ""

    .line 158
    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "FlightLogShareContentView"

    .line 38
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    const-string p2, ""

    .line 158
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "FlightLogShareContentView"

    .line 38
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    const-string p2, ""

    .line 158
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    return-object p0
.end method

.method private doScaleAnima()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 101
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 102
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 105
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0xc8

    .line 107
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x3e8

    .line 108
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 110
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 111
    new-instance v0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView$1;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView$1;-><init>(Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->context:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 61
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->initViews(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->initListeners()V

    return-void
.end method

.method private initListeners()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->doScaleAnima()V

    return-void
.end method

.method private initViewDatas(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 146
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mDateTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->timeString2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "N/A"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlyTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 149
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 148
    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p1

    .line 151
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, p1

    .line 155
    :cond_1
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mMaxMileageTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->context:Landroid/content/Context;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 76
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_view_share_content:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mRootLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 78
    sget p1, Lcn/powervision/flightlog/R$id;->share_bitmap_view:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mBitmapView:Landroid/widget/RelativeLayout;

    .line 79
    sget p1, Lcn/powervision/flightlog/R$id;->share_full_date:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mDateTv:Landroid/widget/TextView;

    .line 80
    sget p1, Lcn/powervision/flightlog/R$id;->share_bottom_city:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mCityTv:Landroid/widget/TextView;

    .line 81
    sget p1, Lcn/powervision/flightlog/R$id;->share_bottom_fly_time:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlyTimeTv:Landroid/widget/TextView;

    .line 82
    sget p1, Lcn/powervision/flightlog/R$id;->share_bottom_max_mileage:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mMaxMileageTv:Landroid/widget/TextView;

    .line 83
    sget p1, Lcn/powervision/flightlog/R$id;->deital_user_icon:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mUserIcon:Landroid/widget/ImageView;

    .line 84
    sget p1, Lcn/powervision/flightlog/R$id;->flightlog_user_name:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mUserNameTv:Landroid/widget/TextView;

    .line 85
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mUserIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->getUserHeadIcon(Landroid/widget/ImageView;)V

    .line 86
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mUserNameTv:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->setUserName(Landroid/widget/TextView;)V

    return-void
.end method

.method private setUserName(Landroid/widget/TextView;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUserHeadIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public putFlightlogData(Lcom/powervision/base/model/flightlog/FlightLogData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 137
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    const-string v0, " error ... data is null ,check it!"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    invoke-direct {p0, p2}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->initViewDatas(Ljava/util/List;)V

    return-void
.end method

.method public saveImageToSdCared(Z)V
    .locals 5

    .line 161
    iget-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->isSaveImage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->isSaveImage:Z

    .line 165
    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 169
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 173
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v3

    .line 176
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/powervision/base/utils/CacheUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    iget-object v2, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "File Path is /NewVisionPlus/Image/"

    .line 181
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 184
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    :cond_2
    iput-boolean v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->isSaveImage:Z

    .line 189
    :cond_3
    iput-boolean v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->isSaveImage:Z

    return-void
.end method
