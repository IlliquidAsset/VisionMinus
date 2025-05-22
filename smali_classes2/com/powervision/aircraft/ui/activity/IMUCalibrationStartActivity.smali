.class public Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "IMUCalibrationStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;
    }
.end annotation


# static fields
.field private static final ACC_CALIBRATION_PROGRESS:I = 0x2

.field private static final ACC_CALIBRATION_START_SUCCESS:I = 0x1

.field private static final ACC_ORIENTATION_DETECTED:I = 0x3

.field private static final ACC_STATUS_CALIBRATION_FAILED:I = 0x6

.field private static final ACC_STATUS_CALIBRATION_START_FAILED:I = 0x7

.field private static final ACC_STATUS_CALIBRATION_SUCCESS:I = 0x5

.field private static final ACC_STATUS_SIDE_DONE:I = 0x4


# instance fields
.field private accCalibrationProgress:I

.field private accStatusSideDone:I

.field private handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

.field private lastSide:I

.field private mCalibratinBar:Landroid/widget/ProgressBar;

.field private mCalibrationExplain:Landroid/widget/TextView;

.field private mCalibrationPic:Landroid/widget/ImageView;

.field private mCalibrationStep1:Landroid/widget/ImageView;

.field private mCalibrationStep2:Landroid/widget/ImageView;

.field private mCalibrationStep3:Landroid/widget/ImageView;

.field private mCalibrationStep4:Landroid/widget/ImageView;

.field private mCalibrationStep5:Landroid/widget/ImageView;

.field private mCalibrationStep6:Landroid/widget/ImageView;

.field private mCalibrationingText:Landroid/widget/TextView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private mSubmitBtn:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private side:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;-><init>(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;Landroid/os/Message;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 6

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 151
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mSubmitBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 146
    :pswitch_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_46:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 147
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->finish()V

    goto/16 :goto_1

    .line 142
    :pswitch_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_45:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 143
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->finish()V

    goto/16 :goto_1

    .line 115
    :pswitch_3
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->accStatusSideDone:I

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    .line 118
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_39:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 122
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep3:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_35:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 126
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep4:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img4:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_40:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep5:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img6:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_41:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-ne p1, v0, :cond_b

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep6:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img5:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_42:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :pswitch_4
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->side:I

    if-nez p1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    .line 88
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_7

    .line 92
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep3:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    if-ne p1, v2, :cond_8

    .line 96
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep4:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_8
    if-ne p1, v1, :cond_9

    .line 100
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep5:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_9
    if-ne p1, v0, :cond_a

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep6:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_imu_calibration_img3:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_40:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    .line 110
    :cond_a
    :goto_0
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->lastSide:I

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->side:I

    goto :goto_1

    .line 80
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibratinBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->accCalibrationProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 76
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibratinBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationingText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCalibrationExplainText(Ljava/lang/String;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationExplain:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_36:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%s\n%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 162
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_imu_calibration_start_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 185
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 186
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_40:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->setCalibrationExplainText(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mTitle:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_26:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCloseBt:Landroid/widget/ImageView;

    .line 170
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mSubmitBtn:Landroid/widget/TextView;

    .line 171
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibratinBar:Landroid/widget/ProgressBar;

    .line 172
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationingText:Landroid/widget/TextView;

    .line 173
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationExplain:Landroid/widget/TextView;

    .line 174
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    .line 175
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    .line 176
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep3:Landroid/widget/ImageView;

    .line 177
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step4:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep4:Landroid/widget/ImageView;

    .line 178
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step5:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep5:Landroid/widget/ImageView;

    .line 179
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step6:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationStep6:Landroid/widget/ImageView;

    .line 180
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 200
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->finish()V

    .line 202
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->cancelCalibration()I

    goto :goto_0

    .line 203
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_calibration_btn:I

    if-ne p1, v0, :cond_1

    .line 204
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startAccelCalibration()I

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mSubmitBtn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGyroCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;)V

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAccCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;)V

    .line 214
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setAccCalibrationStatusAlreadyCompleted(I)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccCalibrationStatusAlreadyCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMUCalibrationStart1"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusCalibration(I)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccCalibrationStatusCalibration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMUCalibrationStart1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->accCalibrationProgress:I

    .line 245
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusCalibrationFailed()V
    .locals 2

    const-string v0, "IMUCalibrationStart1"

    const-string v1, "setAccCalibrationStatusCalibrationFailed"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusCalibrationSuccess()V
    .locals 2

    const-string v0, "IMUCalibrationStart1"

    const-string v1, "setAccCalibrationStatusCalibrationSuccess"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusCalibrationTimeout()V
    .locals 2

    const-string v0, "IMUCalibrationStart1"

    const-string v1, "setAccCalibrationStatusCalibrationTimeout"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusOrientationDetected(I)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccCalibrationStatusOrientationDetected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMUCalibrationStart1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->side:I

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusPending(I)V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccCalibrationStatusPending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMUCalibrationStart1"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccCalibrationStatusSideDone(I)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccCalibrationStatusSideDone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMUCalibrationStart1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->accStatusSideDone:I

    .line 259
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusStartFailed()V
    .locals 2

    const-string v0, "IMUCalibrationStart1"

    const-string v1, "setAccCalibrationStatusStartFailed"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAccCalibrationStatusStartSuccess()V
    .locals 2

    const-string v0, "IMUCalibrationStart1"

    const-string v1, "setAccCalibrationStatusStartSuccess"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 192
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mSubmitBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAccCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;)V

    return-void
.end method
