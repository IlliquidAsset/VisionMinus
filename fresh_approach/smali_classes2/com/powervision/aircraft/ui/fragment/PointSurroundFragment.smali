.class public Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "PointSurroundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;
.implements Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;
    }
.end annotation


# static fields
.field private static final MODE_CURRENT_DISTANCE:I = 0x0

.field private static final MODE_CURRENT_HEIGHT:I = 0x1

.field private static final MODE_CURRENT_SPEED:I = 0x2

.field private static final STATUS_GET_FAILED:I = 0x14


# instance fields
.field private final Tag:Ljava/lang/String;

.field private a:I

.field private actualDistanceValue:F

.field private currentSettingMode:I

.field isClockWise:Z

.field private lastMaxSpeed:I

.field private lat:I

.field private lon:I

.field private mBottomRootLayout:Landroid/widget/LinearLayout;

.field private mCheckItemIndex:I

.field private mClockWiseView:Landroid/widget/ImageView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDistanceValue:Landroid/widget/TextView;

.field private mGimBalBackCenter:Landroid/widget/ImageView;

.field private mHandler:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

.field private mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mHeightValue:Landroid/widget/TextView;

.field private mPhotoOrMedia:Landroid/widget/ImageView;

.field private mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mScrollLayout:Landroid/widget/RelativeLayout;

.field private mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mSetGpsPointBt:Landroid/widget/TextView;

.field private mSetGpsPointLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSettingBack:Landroid/widget/ImageView;

.field private mShowArrowView:Landroid/widget/ImageView;

.field private mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSpeedValue:Landroid/widget/TextView;

.field private mSurroundStartStop:Landroid/widget/ImageView;

.field private maxValueText:Landroid/widget/TextView;

.field private minValueText:Landroid/widget/TextView;

.field private surroundCurrentStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->currentSettingMode:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    .line 92
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    const/4 v0, 0x2

    .line 389
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->a:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;Landroid/os/Message;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSetGpsPointLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mBottomRootLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 4

    .line 466
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 468
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 470
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    const-string v0, "onekey_sunround_nemo"

    if-nez p1, :cond_1

    .line 471
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    .line 472
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSurroundStartStop:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_stop:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======\u6267\u884c\u5f00\u59cb==="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCurrentRecordTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    invoke-static {v2}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AP03_D_AI_Point_Of_Interest"

    .line 475
    invoke-static {v3, v1, v0, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 474
    invoke-static {p1, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_7

    const/4 p1, 0x0

    .line 479
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    .line 480
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSurroundStartStop:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_continue:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======\u6267\u884c\u7ed3\u675f==="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 484
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHandler:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "nemo-point-surround"

    if-nez p1, :cond_4

    const-string p1, "\u8bbe\u7f6e\u9ad8\u5ea6\u6210\u529f"

    .line 494
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    const-string p1, "\u8bbe\u7f6e\u8ddd\u79bb\u6210\u529f"

    .line 496
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    const-string p1, "\u8bbe\u7f6e\u901f\u5ea6\u6210\u529f"

    .line 498
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 500
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->updateClockWiseView()V

    :cond_7
    :goto_0
    return-void
.end method

.method private initBottomViews()V
    .locals 2

    .line 130
    sget v0, Lcom/powervision/aircraft/R$id;->bottom_root_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mBottomRootLayout:Landroid/widget/LinearLayout;

    .line 131
    sget v0, Lcom/powervision/aircraft/R$id;->surround_setting_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSettingBack:Landroid/widget/ImageView;

    .line 132
    sget v0, Lcom/powervision/aircraft/R$id;->surround_clock_wise:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/powervision/aircraft/R$id;->surround_gimbal_back_to_center:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mGimBalBackCenter:Landroid/widget/ImageView;

    .line 134
    sget v0, Lcom/powervision/aircraft/R$id;->surround_start_stop:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSurroundStartStop:Landroid/widget/ImageView;

    .line 135
    sget v0, Lcom/powervision/aircraft/R$id;->surround_photo_media:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mPhotoOrMedia:Landroid/widget/ImageView;

    .line 137
    sget v0, Lcom/powervision/aircraft/R$id;->surround_distance_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 138
    sget v0, Lcom/powervision/aircraft/R$id;->distance_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceValue:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/powervision/aircraft/R$id;->surround_height_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 142
    sget v0, Lcom/powervision/aircraft/R$id;->height_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightValue:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/powervision/aircraft/R$id;->surround_speed_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 145
    sget v0, Lcom/powervision/aircraft/R$id;->speed_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedValue:Landroid/widget/TextView;

    .line 147
    sget v0, Lcom/powervision/aircraft/R$id;->scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    .line 148
    sget v0, Lcom/powervision/aircraft/R$id;->value_view_distance:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 149
    sget v0, Lcom/powervision/aircraft/R$id;->value_view_height:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 150
    sget v0, Lcom/powervision/aircraft/R$id;->value_view_speed:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 151
    sget v0, Lcom/powervision/aircraft/R$id;->surround_show_arrow_bt:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mShowArrowView:Landroid/widget/ImageView;

    .line 153
    sget v0, Lcom/powervision/aircraft/R$id;->min_value_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->minValueText:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/powervision/aircraft/R$id;->max_value_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->maxValueText:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    return-void
.end method

.method private initIntresetViews()V
    .locals 1

    .line 125
    sget v0, Lcom/powervision/aircraft/R$id;->surround_set_ponit_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSetGpsPointLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    sget v0, Lcom/powervision/aircraft/R$id;->surround_set_interest_point:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSetGpsPointBt:Landroid/widget/TextView;

    return-void
.end method

.method private initScrollViewsData()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v1, 0x3

    const/16 v2, 0x78

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method private initSurroundManager()V
    .locals 1

    .line 253
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->initSDK()V

    .line 254
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setOnSetSurroundParmasListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V

    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSettingBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mGimBalBackCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSurroundStartStop:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mPhotoOrMedia:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSetGpsPointBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V

    .line 176
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V

    .line 177
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    return-void
.end method

.method private showOrHideScrollLayout(I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 267
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    if-ne p1, v1, :cond_0

    .line 268
    iput v2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 269
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    goto/16 :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    .line 274
    iput v2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 275
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_b

    .line 277
    iput v2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 278
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_7

    .line 281
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    if-ne p1, v1, :cond_4

    .line 282
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 283
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 285
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 286
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    .line 288
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_b

    .line 291
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 292
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_7
    if-ne p1, v3, :cond_b

    .line 295
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    if-ne p1, v1, :cond_8

    .line 296
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 297
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    .line 299
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 300
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_9
    if-ne p1, v4, :cond_a

    .line 302
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 305
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showScrollLayoutByIndex(I)V

    goto :goto_0

    :cond_a
    if-ne p1, v3, :cond_b

    .line 307
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    .line 311
    :cond_b
    :goto_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 313
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v0, :cond_c

    iget v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    if-ne v3, v1, :cond_c

    .line 315
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  i=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 321
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->setBottomItemBg(I)V

    return-void
.end method

.method private showScrollLayoutByIndex(I)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/16 v2, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    return-void
.end method

.method private startStopSurround()V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   \u73af\u7ed5\u5f00\u59cb  \u6682\u505c surroundCurrentStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    const/4 v1, 0x5

    const-string v2, "onekey_sunround_nemo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======\u6267\u884c\u5f00\u59cbclick==="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    new-array v2, v4, [I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======\u6267\u884c\u7ed3\u675fclick==="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->surroundCurrentStatus:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    new-array v2, v4, [I

    aput v3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    :goto_0
    return-void
.end method

.method private switchModeViews()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSetGpsPointLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mBottomRootLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateClockWiseView()V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_counterclockwise:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_clockwise:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 100
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_surround_point_interest_setting_layout:I

    return v0
.end method

.method public getScrollDataList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt p1, p2, :cond_0

    .line 357
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->initScrollViewsData()V

    .line 117
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->switchModeViews()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 106
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHandler:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

    .line 107
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->initIntresetViews()V

    .line 108
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->initBottomViews()V

    .line 109
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->setListeners()V

    .line 110
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->initSurroundManager()V

    return-void
.end method

.method public synthetic lambda$onSmartFunctionData$0$PointSurroundFragment(FFFF)V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->minValueText:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->maxValueText:Landroid/widget/TextView;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollDistanceValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    float-to-int v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->minValueText:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->maxValueText:Landroid/widget/TextView;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollHeightValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    float-to-int p2, p2

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_2

    .line 409
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    if-eqz p2, :cond_3

    .line 410
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_counterclockwise:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    goto :goto_0

    .line 414
    :cond_2
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    if-nez p2, :cond_3

    .line 415
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mClockWiseView:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_clockwise:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    .line 419
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    .line 420
    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->a:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_4

    const/16 p1, 0xa

    .line 424
    :cond_4
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->minValueText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->maxValueText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lastMaxSpeed:I

    if-eq p2, p1, :cond_5

    .line 428
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p0, v1, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    .line 429
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lastMaxSpeed:I

    .line 431
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    goto :goto_1

    .line 432
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_7

    .line 433
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lastMaxSpeed:I

    .line 434
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollSpeedValueView:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 436
    :cond_7
    :goto_1
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->actualDistanceValue:F

    .line 437
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceValue:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    float-to-double p1, p4

    .line 438
    invoke-static {p1, p2, v0}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide p1

    .line 439
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceValue:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 188
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 192
    sget v0, Lcom/powervision/aircraft/R$id;->surround_setting_arrow:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mBottomRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->surround_show_arrow_bt:I

    if-ne p1, v0, :cond_2

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mBottomRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 202
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->surround_clock_wise:I

    if-ne p1, v0, :cond_4

    .line 203
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->isClockWise:Z

    const/4 v0, 0x6

    if-eqz p1, :cond_3

    .line 204
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object p1

    new-array v1, v2, [I

    const/4 v2, -0x1

    aput v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto/16 :goto_0

    .line 206
    :cond_3
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object p1

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto/16 :goto_0

    .line 209
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->surround_gimbal_back_to_center:I

    if-ne p1, v0, :cond_5

    .line 211
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object p1

    const/4 v0, 0x7

    new-array v1, v3, [I

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto/16 :goto_0

    .line 212
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->surround_start_stop:I

    if-ne p1, v0, :cond_7

    .line 213
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->actualDistanceValue:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 214
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->startStopSurround()V

    goto/16 :goto_0

    .line 216
    :cond_6
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_52:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    .line 218
    :cond_7
    sget v0, Lcom/powervision/aircraft/R$id;->surround_photo_media:I

    if-ne p1, v0, :cond_9

    .line 219
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_8

    .line 220
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_8
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->surround_distance_layout:I

    if-ne p1, v0, :cond_a

    .line 225
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showOrHideScrollLayout(I)V

    goto :goto_0

    .line 226
    :cond_a
    sget v0, Lcom/powervision/aircraft/R$id;->surround_height_layout:I

    if-ne p1, v0, :cond_b

    .line 227
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showOrHideScrollLayout(I)V

    goto :goto_0

    .line 228
    :cond_b
    sget v0, Lcom/powervision/aircraft/R$id;->surround_speed_layout:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_c

    .line 229
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->showOrHideScrollLayout(I)V

    goto :goto_0

    .line 230
    :cond_c
    sget v0, Lcom/powervision/aircraft/R$id;->surround_set_interest_point:I

    if-ne p1, v0, :cond_d

    .line 231
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    \u53d1\u9001\u5f53\u524d\u98de\u673a\u4f4d\u7f6e \u7ecf\u7eac\u5ea6   lat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lat:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  lon="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lon:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v1, [I

    iget v4, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lat:I

    aput v4, v1, v3

    iget v3, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lon:I

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    :cond_d
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 540
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->removeListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V

    .line 541
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 542
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->removeListener()V

    .line 543
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onItemSelect(I)V
    .locals 4

    .line 367
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mCheckItemIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    new-array v3, v2, [I

    add-int/lit8 p1, p1, 0x5

    aput p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 370
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    new-array v2, v2, [I

    add-int/lit8 p1, p1, 0x3

    aput p1, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 372
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetParmasResultFailed(II)V
    .locals 0

    .line 512
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHandler:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 0

    .line 507
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHandler:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 7

    .line 394
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    new-instance v6, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$PointSurroundFragment$GRTZ2YR16AlGWio8j-hQ8zKlLHU;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$PointSurroundFragment$GRTZ2YR16AlGWio8j-hQ8zKlLHU;-><init>(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;FFFF)V

    invoke-virtual {p5, v6}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======expectSpeed==="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "======expectHeight====="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "=======actualDistance======"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "====expectRadii===="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sunround_point_nemo"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setBottomItemBg(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 334
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 335
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 337
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 338
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 339
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 341
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 342
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 343
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mDistanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 346
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 347
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "POSCTL"

    .line 447
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "TRIPLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "FAST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0xf32

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    return-void
.end method

.method public setDeviceLatLon(II)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lat:I

    .line 535
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->lon:I

    return-void
.end method

.method public updateHeightAndSpeed(FF)V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    float-to-double p1, p1

    .line 521
    invoke-static {p1, p2, v0}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide p1

    .line 522
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mSpeedValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 523
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, v1

    if-eqz p1, :cond_1

    float-to-double p1, p2

    .line 526
    invoke-static {p1, p2, v0}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide p1

    .line 527
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->mHeightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 528
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
