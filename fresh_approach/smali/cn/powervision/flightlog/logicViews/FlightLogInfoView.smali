.class public Lcn/powervision/flightlog/logicViews/FlightLogInfoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FlightLogInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;
    }
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isHide:Z

.field private isPlaying:Z

.field private mCenterInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCityName:Landroid/widget/TextView;

.field private mControlerBt:Landroid/widget/ImageView;

.field private mDetialDate:Landroid/widget/TextView;

.field private mDistance:Landroid/widget/TextView;

.field private mDitalShareBt:Landroid/widget/ImageView;

.field private mFlyTime:Landroid/widget/TextView;

.field private mHSpeed:Landroid/widget/TextView;

.field private mHeight:Landroid/widget/TextView;

.field private mHideShowBt:Landroid/widget/ImageView;

.field private mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

.field private mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

.field private mMapLocationCenter:Landroid/widget/ImageView;

.field private mMileage:Landroid/widget/TextView;

.field private mNextBt:Landroid/widget/ImageView;

.field mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mPreviousBt:Landroid/widget/ImageView;

.field private mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedBt:Landroid/widget/ImageView;

.field private mStartStopBt:Landroid/widget/ImageView;

.field private mUserIcon:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;

.field private mVSpeed:Landroid/widget/TextView;

.field private playSpeed:I

.field private showControler:Z

.field private startMileage:F

.field private startTime:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FlightLogInfoView"

    .line 30
    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    const/4 v1, 0x1

    .line 49
    iput v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 53
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    .line 59
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startMileage:F

    .line 63
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "FlightLogInfoView"

    .line 30
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->Tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 53
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    .line 59
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    const/4 p2, 0x0

    .line 132
    iput p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startMileage:F

    .line 77
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "FlightLogInfoView"

    .line 30
    iput-object p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->Tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    const/4 p3, 0x1

    .line 49
    iput p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 53
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    .line 59
    iput-boolean p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    const/4 p2, 0x0

    .line 132
    iput p2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startMileage:F

    .line 82
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private changeNextData(Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz v0, :cond_0

    const-string v0, "FlightLogInfoView"

    const-string v1, "      changeNextData()"

    .line 277
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    invoke-interface {v0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onChangeDataClick(Z)V

    :cond_0
    return-void
.end method

.method private getSpeedValue()V
    .locals 4

    .line 296
    iget v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 297
    iput v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 298
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_speed_x2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v1, :cond_1

    .line 300
    iput v3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 301
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_speed_x4:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const/16 v0, 0x8

    .line 303
    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 304
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_speed_x8:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_speed_x1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iput v2, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 71
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->initViews(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->initListeners()V

    return-void
.end method

.method private initListeners()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mMapLocationCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mControlerBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDitalShareBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreviousBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mNextBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHideShowBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 89
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_view_log_detial_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    sget p1, Lcn/powervision/flightlog/R$id;->detial_left_controler:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/powervision/flightlog/customViews/RockerAmountView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    .line 92
    sget p1, Lcn/powervision/flightlog/R$id;->detial_right_controler:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/powervision/flightlog/customViews/RockerAmountView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    .line 94
    sget p1, Lcn/powervision/flightlog/R$id;->detial_user_name:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mUserName:Landroid/widget/TextView;

    .line 95
    sget p1, Lcn/powervision/flightlog/R$id;->detial_city_name:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mCityName:Landroid/widget/TextView;

    .line 96
    sget p1, Lcn/powervision/flightlog/R$id;->detial_date:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDetialDate:Landroid/widget/TextView;

    .line 98
    sget p1, Lcn/powervision/flightlog/R$id;->detial_mileage_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mMileage:Landroid/widget/TextView;

    .line 99
    sget p1, Lcn/powervision/flightlog/R$id;->detial_time_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mFlyTime:Landroid/widget/TextView;

    .line 100
    sget p1, Lcn/powervision/flightlog/R$id;->detial_distance_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDistance:Landroid/widget/TextView;

    .line 101
    sget p1, Lcn/powervision/flightlog/R$id;->detial_height_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHeight:Landroid/widget/TextView;

    .line 102
    sget p1, Lcn/powervision/flightlog/R$id;->detial_h_speed_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHSpeed:Landroid/widget/TextView;

    .line 103
    sget p1, Lcn/powervision/flightlog/R$id;->detial_v_speed_value:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mVSpeed:Landroid/widget/TextView;

    .line 105
    sget p1, Lcn/powervision/flightlog/R$id;->flightlog_seekbar:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSeekBar:Landroid/widget/SeekBar;

    .line 107
    sget p1, Lcn/powervision/flightlog/R$id;->detial_previous_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreviousBt:Landroid/widget/ImageView;

    .line 108
    sget p1, Lcn/powervision/flightlog/R$id;->detial_next_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mNextBt:Landroid/widget/ImageView;

    .line 110
    sget p1, Lcn/powervision/flightlog/R$id;->detial_hide_show_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHideShowBt:Landroid/widget/ImageView;

    .line 111
    sget p1, Lcn/powervision/flightlog/R$id;->center_info_layout:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mCenterInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    sget p1, Lcn/powervision/flightlog/R$id;->detial_center:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mMapLocationCenter:Landroid/widget/ImageView;

    .line 114
    sget p1, Lcn/powervision/flightlog/R$id;->detial_control_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mControlerBt:Landroid/widget/ImageView;

    .line 115
    sget p1, Lcn/powervision/flightlog/R$id;->detial_speed_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    .line 116
    sget p1, Lcn/powervision/flightlog/R$id;->flightlog_play_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    .line 117
    sget p1, Lcn/powervision/flightlog/R$id;->detial_share:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDitalShareBt:Landroid/widget/ImageView;

    .line 119
    sget p1, Lcn/powervision/flightlog/R$id;->deital_user_icon:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mUserIcon:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->getUserHeadIcon(Landroid/widget/ImageView;)V

    .line 121
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mUserName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setUserName(Landroid/widget/TextView;)V

    return-void
.end method

.method private onPlayStop()V
    .locals 2

    .line 264
    iget-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz v0, :cond_1

    .line 271
    iget-boolean v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    invoke-interface {v0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickPlay(Z)V

    :cond_1
    return-void
.end method

.method private reloadRemoteViews(Lcom/powervision/base/model/flightlog/FlightLogData;)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getLeftRemoteControlerUpDown()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getLeftControlerLeftRight()I

    move-result v1

    .line 165
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getRightControlerUpDown()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getRightControlerLeftRight()I

    move-result p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    .line 182
    :goto_1
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setValue(F)V

    .line 183
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setValue(F)V

    return-void
.end method

.method private setUserName(Landroid/widget/TextView;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showHideControler()V
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mControlerBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_control_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mControlerBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_control_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    :goto_0
    iget-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    return-void
.end method


# virtual methods
.method public getUserHeadIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 222
    sget v0, Lcn/powervision/flightlog/R$id;->detial_center:I

    if-ne p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz p1, :cond_a

    .line 224
    invoke-interface {p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickLocation()V

    goto/16 :goto_1

    .line 226
    :cond_0
    sget v0, Lcn/powervision/flightlog/R$id;->detial_control_bt:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 227
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz p1, :cond_1

    .line 228
    iget-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showControler:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickshowHideControler(Z)V

    .line 230
    :cond_1
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->showHideControler()V

    goto/16 :goto_1

    .line 231
    :cond_2
    sget v0, Lcn/powervision/flightlog/R$id;->detial_speed_bt:I

    if-ne p1, v0, :cond_3

    .line 232
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->getSpeedValue()V

    .line 233
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz p1, :cond_a

    .line 234
    iget v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    invoke-interface {p1, v0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickSpeed(I)V

    goto :goto_1

    .line 236
    :cond_3
    sget v0, Lcn/powervision/flightlog/R$id;->flightlog_play_bt:I

    if-ne p1, v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->onPlayStop()V

    goto :goto_1

    .line 238
    :cond_4
    sget v0, Lcn/powervision/flightlog/R$id;->detial_share:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    .line 239
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz p1, :cond_5

    .line 240
    invoke-interface {p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickShare()V

    .line 243
    :cond_5
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    if-eqz p1, :cond_a

    .line 244
    invoke-interface {p1, v2}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;->onClickPlay(Z)V

    .line 245
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v0, Lcn/powervision/flightlog/R$mipmap;->flightlog_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 247
    :cond_6
    sget v0, Lcn/powervision/flightlog/R$id;->detial_previous_bt:I

    if-ne p1, v0, :cond_7

    .line 248
    invoke-direct {p0, v2}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->changeNextData(Z)V

    goto :goto_1

    .line 249
    :cond_7
    sget v0, Lcn/powervision/flightlog/R$id;->detial_next_bt:I

    if-ne p1, v0, :cond_8

    .line 250
    invoke-direct {p0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->changeNextData(Z)V

    goto :goto_1

    .line 251
    :cond_8
    sget v0, Lcn/powervision/flightlog/R$id;->detial_hide_show_bt:I

    if-ne p1, v0, :cond_a

    .line 252
    iget-boolean p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    if-nez p1, :cond_9

    .line 253
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mCenterInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHideShowBt:Landroid/widget/ImageView;

    sget v0, Lcn/powervision/flightlog/R$mipmap;->flightlog_show_detial:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_9
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mCenterInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHideShowBt:Landroid/widget/ImageView;

    sget v0, Lcn/powervision/flightlog/R$mipmap;->flightlog_hide_detial:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    :goto_0
    iget-boolean p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isHide:Z

    :cond_a
    :goto_1
    return-void
.end method

.method public onPlayOver()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    return-void
.end method

.method public reloadContentViews(Lcom/powervision/base/model/flightlog/FlightLogData;ILcom/powervision/base/model/flightlog/FlightLogData;)V
    .locals 5

    .line 138
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->reloadRemoteViews(Lcom/powervision/base/model/flightlog/FlightLogData;)V

    if-nez p2, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startTime:D

    .line 141
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result v0

    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startMileage:F

    .line 142
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mCityName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "N/A"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDetialDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->timeString2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getMileage()F

    move-result p3

    .line 148
    iget v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startMileage:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sub-float/2addr p3, v0

    .line 151
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mMileage:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    float-to-double v2, p3

    invoke-static {v1, v2, v3}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mFlyTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCurrentTime()D

    move-result-wide v1

    iget-wide v3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startTime:D

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mDistance:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getStraightDistance()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHeight:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getAircraftHeight()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4M(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mHSpeed:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getHorizontalSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MS(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p3, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mVSpeed:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getVerticalSpeed()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MS(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0, p2}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setSeekBarProgress(I)V

    return-void
.end method

.method public resetDatas()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->startTime:D

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->isPlaying:Z

    .line 199
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mLeftControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setValue(F)V

    .line 201
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mRightControler:Lcn/powervision/flightlog/customViews/RockerAmountView;

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setValue(F)V

    return-void
.end method

.method public setDefaultPlaySpeed()V
    .locals 2

    const/4 v0, 0x1

    .line 312
    iput v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->playSpeed:I

    .line 313
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSpeedBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_speed_x1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setIContentClickListener(Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mIContentClickListener:Lcn/powervision/flightlog/logicViews/FlightLogInfoView$IContentClickListener;

    return-void
.end method

.method public setSeekBarListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 319
    invoke-virtual {p0, p2}, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->setSeekBarMaxValue(I)V

    :cond_0
    return-void
.end method

.method public setSeekBarMaxValue(I)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setSeekBarProgress(I)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setStopPlayIcon()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogInfoView;->mStartStopBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
