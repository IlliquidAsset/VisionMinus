.class public Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FlightLogTrackInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Tag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mCityName:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mHeight:Landroid/widget/TextView;

.field private mMileage:Landroid/widget/TextView;

.field private mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mTime:Landroid/widget/TextView;

.field mUserIcon:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;

.field private startMileage:F

.field private startTime:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FlightLogTrackInfoView"

    .line 32
    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startMileage:F

    .line 37
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "FlightLogTrackInfoView"

    .line 32
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->Tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startMileage:F

    .line 50
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "FlightLogTrackInfoView"

    .line 32
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->Tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startMileage:F

    .line 55
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->context:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 43
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->initViews(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->initListeners()V

    return-void
.end method

.method private initListeners()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mUserIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 62
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_view_track_information:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget p1, Lcn/powervision/flightlog/R$id;->track_user_icon:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mUserIcon:Landroid/widget/ImageView;

    .line 64
    sget p1, Lcn/powervision/flightlog/R$id;->track_user_name:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mUserName:Landroid/widget/TextView;

    .line 65
    sget p1, Lcn/powervision/flightlog/R$id;->track_city_name:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mCityName:Landroid/widget/TextView;

    .line 66
    sget p1, Lcn/powervision/flightlog/R$id;->track_date:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mDate:Landroid/widget/TextView;

    .line 67
    sget p1, Lcn/powervision/flightlog/R$id;->track_mileage_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mMileage:Landroid/widget/TextView;

    .line 68
    sget p1, Lcn/powervision/flightlog/R$id;->track_time_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mTime:Landroid/widget/TextView;

    .line 69
    sget p1, Lcn/powervision/flightlog/R$id;->track_height_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mHeight:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mUserName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->setUserName(Landroid/widget/TextView;)V

    .line 71
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mCityName:Landroid/widget/TextView;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mUserIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->getUserHeadIcon(Landroid/widget/ImageView;)V

    return-void
.end method

.method private setUserName(Landroid/widget/TextView;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUserHeadIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 110
    sget p1, Lcn/powervision/flightlog/R$id;->track_user_icon:I

    return-void
.end method

.method public reloadInfoViews(Lcom/powervision/base/model/flightlog/FlightLogData;I)V
    .locals 5

    if-eqz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startTime:D

    .line 94
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p2

    iput p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startMileage:F

    .line 96
    :cond_1
    iget-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->timeString2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p2

    .line 98
    iget v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startMileage:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sub-float/2addr p2, v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mMileage:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->context:Landroid/content/Context;

    float-to-double v2, p2

    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v1

    iget-wide v3, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->startTime:D

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->mHeight:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogTrackInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftHeight()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
