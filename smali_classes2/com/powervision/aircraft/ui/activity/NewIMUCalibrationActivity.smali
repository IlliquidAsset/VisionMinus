.class public Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "NewIMUCalibrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;
    }
.end annotation


# static fields
.field private static final IMU_CALIBRATION_CHANGE_UI:I = 0x8

.field private static final IMU_CALIBRATION_PROGRESS:I = 0x2

.field private static final IMU_CALIBRATION_START_FAILED:I = 0x7

.field private static final IMU_CALIBRATION_START_SUCCESS:I = 0x1

.field private static final IMU_ORIENTATION_DETECTED:I = 0x3

.field private static final IMU_STATUS_CALIBRATION_FAILED:I = 0x6

.field private static final IMU_STATUS_CALIBRATION_SUCCESS:I = 0x5

.field private static final IMU_STATUS_SIDE_DONE:I = 0x4


# instance fields
.field private final TAG:Ljava/lang/String;

.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

.field private mCalibrationAllSuccessImg:Landroid/widget/ImageView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mDetecteBar:Landroid/widget/ProgressBar;

.field private mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

.field private mIMUCalibrationRemindImg:Landroid/widget/ImageView;

.field private mIMUCalibrationRemindText:Landroid/widget/TextView;

.field private mIMUCalibrationStartBtn:Landroid/widget/TextView;

.field private mIMUCalibrationStatusImg:Landroid/widget/ImageView;

.field private mIMUCalibrationTitle1:Landroid/widget/TextView;

.field private mIMUCalibrationTitle2:Landroid/widget/TextView;

.field private mIMUCalibrationTitle3:Landroid/widget/TextView;

.field private mIMUCalibrationTitle4:Landroid/widget/TextView;

.field private mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private sideDetected:I

.field private sideDone:I

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;-><init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;Landroid/os/Message;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 8

    .line 93
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq p1, v2, :cond_c

    const/16 v5, 0x8

    if-eq p1, v4, :cond_7

    const/4 v2, 0x0

    const/16 v6, 0xde

    if-eq p1, v3, :cond_6

    const/4 v7, 0x6

    if-eq p1, v7, :cond_5

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 139
    :cond_0
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDone:I

    if-ne p1, v3, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_14:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video2:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_16:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_17:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video3:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_19:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video4:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video5:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v0, :cond_12

    .line 152
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_21:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video6:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle3:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    invoke-virtual {p1, v5}, Lcom/powervision/base/views/MaterialProgressBar;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 157
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle1:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle3:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    invoke-virtual {p1, v5}, Lcom/powervision/base/views/MaterialProgressBar;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_7:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 168
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video1:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 120
    :cond_7
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDone:I

    const-wide/16 v6, 0x3e8

    if-ne p1, v3, :cond_8

    .line 121
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideCalibrationSuccess()V

    .line 122
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-virtual {p1, v5, v6, v7}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    .line 124
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideCalibrationSuccess()V

    .line 125
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-virtual {p1, v5, v6, v7}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    if-nez p1, :cond_a

    .line 127
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideCalibrationSuccess()V

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-virtual {p1, v5, v6, v7}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    if-ne p1, v1, :cond_b

    .line 130
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideCalibrationSuccess()V

    .line 131
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-virtual {p1, v5, v6, v7}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    if-ne p1, v0, :cond_12

    .line 133
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideCalibrationSuccess()V

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    invoke-virtual {p1, v5, v6, v7}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 105
    :cond_c
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDetected:I

    if-ne p1, v3, :cond_d

    .line 106
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_10:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_11:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-ne p1, v4, :cond_e

    .line 108
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_14:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    if-nez p1, :cond_f

    .line 110
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_16:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_17:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    if-ne p1, v1, :cond_10

    .line 112
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_19:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    if-ne p1, v0, :cond_11

    .line 114
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    if-ne p1, v2, :cond_12

    .line 116
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_18:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_21:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_0
    return-void
.end method

.method private initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V
    .locals 1

    .line 351
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    .line 352
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    .line 353
    invoke-virtual {p1, p3}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    const/4 p3, 0x0

    .line 354
    invoke-virtual {p1, p2, p3}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 355
    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 356
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    sget p3, Lcom/powervision/aircraft/R$drawable;->home_video_white_background:I

    .line 357
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object p3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 358
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    .line 359
    invoke-virtual {p3}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->imageView()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 361
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    const-wide/16 p2, 0x0

    .line 362
    invoke-virtual {p1, p2, p3}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method

.method private mCountDownProgress()V
    .locals 7

    .line 328
    new-instance v6, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$2;

    const-wide/16 v2, 0x61a8

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$2;-><init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;JJ)V

    iput-object v6, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->timer:Landroid/os/CountDownTimer;

    .line 339
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private setCalibrationExplainText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle3:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_status_success:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_13:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/MaterialProgressBar;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->timer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle3:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_status_failed:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_12:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    invoke-virtual {p1, v2}, Lcom/powervision/base/views/MaterialProgressBar;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCountDownProgress()V

    return-void
.end method

.method private sideCalibrationSuccess()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/MaterialProgressBar;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/powervision/base/utils/AnimUtils;->showAlphaAnimation(Landroid/content/Context;Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_status_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/powervision/base/utils/AnimUtils;->showAlphaAnimation(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 196
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->systemFullScreen()V

    .line 197
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_new_imu_calibration_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 222
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    .line 223
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video1:I

    invoke-static {v1}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xde

    invoke-direct {p0, v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 202
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mTitle:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_26:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCloseBt:Landroid/widget/ImageView;

    .line 205
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_vedio:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 206
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_title1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle1:Landroid/widget/TextView;

    .line 207
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_title2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle2:Landroid/widget/TextView;

    .line 208
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_title3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle3:Landroid/widget/TextView;

    .line 209
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_title4:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle4:Landroid/widget/TextView;

    .line 210
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_status_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStatusImg:Landroid/widget/ImageView;

    .line 211
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_remind_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindImg:Landroid/widget/ImageView;

    .line 212
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_success_remind_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationRemindText:Landroid/widget/TextView;

    .line 213
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_start_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    .line 214
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/MaterialProgressBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressBar:Lcom/powervision/base/views/MaterialProgressBar;

    .line 215
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_detected_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mDetecteBar:Landroid/widget/ProgressBar;

    .line 216
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_progress_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mProgressText:Landroid/widget/TextView;

    .line 217
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_all_success_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCalibrationAllSuccessImg:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 247
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->finish()V

    .line 249
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->cancelCalibration()I

    goto :goto_0

    .line 250
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_calibration_start_btn:I

    if-ne p1, v0, :cond_2

    .line 251
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_22:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startAccelCalibration()I

    .line 253
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationTitle1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white_alpha_40:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationVideo:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v0, Lcom/powervision/aircraft/R$raw;->aircraft_imu_calbration_video1:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xde

    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_10:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46_11:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setSideDetectedStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 436
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 437
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAccCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;)V

    return-void
.end method

.method public setAccCalibrationStatusAlreadyCompleted(I)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccCalibrationStatusAlreadyCompleted====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusCalibration(I)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    .line 383
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusCalibrationFailed()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    .line 418
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAccCalibrationStatusCalibrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusCalibrationSuccess()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    .line 425
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAccCalibrationStatusCalibrationSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusCalibrationTimeout()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAccCalibrationStatusCalibrationTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusOrientationDetected(I)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    .line 390
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDetected:I

    .line 391
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sideDetected====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDetected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusPending(I)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccCalibrationStatusPending====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusSideDone(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    .line 398
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDone:I

    .line 399
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sideDone====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->sideDone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusStartFailed()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAccCalibrationStatusStartFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusStartSuccess()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAccCalibrationStatusStartSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mHandler:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 229
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 230
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mIMUCalibrationStartBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAccCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;)V

    .line 233
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "FLY_ISARM_NOTIFY"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;-><init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
