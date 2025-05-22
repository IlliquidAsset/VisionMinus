.class public Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "MagCalibrationStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;
    }
.end annotation


# static fields
.field private static final MAG_CALIBRATION_PROGRESS:I = 0x2

.field private static final MAG_CALIBRATION_START_SUCCESS:I = 0x1

.field private static final MAG_ORIENTATION_DETECTED:I = 0x3

.field private static final MAG_STATUS_CALIBRATION_FAILED:I = 0x6

.field private static final MAG_STATUS_CALIBRATION_START_FAILED:I = 0x7

.field private static final MAG_STATUS_CALIBRATION_SUCCESS:I = 0x5

.field private static final MAG_STATUS_SIDE_DONE:I = 0x4


# instance fields
.field private handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

.field private mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

.field private mCalibraSuccessOrFailedText:Landroid/widget/TextView;

.field private mCalibrationIngText:Landroid/widget/TextView;

.field private mCalibrationNotifyContent:Landroid/widget/TextView;

.field private mCalibrationNotifyTitle:Landroid/widget/TextView;

.field private mCalibrationPic:Landroid/widget/ImageView;

.field private mCalibrationStart:Landroid/widget/TextView;

.field private mCalibrationStep:Landroid/widget/TextView;

.field private mCalibrationStep1:Landroid/widget/ImageView;

.field private mCalibrationStep2:Landroid/widget/ImageView;

.field private mCalibrationStep3:Landroid/widget/ImageView;

.field private mCalibrationStepText:Landroid/widget/TextView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private magStatusSideDone:I

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private side:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;-><init>(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 6

    .line 69
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_103:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyContent:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStepText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_283:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_58:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_calibration_failed_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_calibration_complete:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 131
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStepText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->App_MediaLib_89:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_57:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_calibration_success_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_calibration_complete:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 117
    :pswitch_3
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->magStatusSideDone:I

    if-ne p1, v2, :cond_0

    .line 118
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    if-ne p1, v0, :cond_4

    .line 122
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_green_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_calibration_img3:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->side:I

    const-string v5, "MagCalibrationStart2"

    if-ne p1, v2, :cond_2

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hahahahha"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->side:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$drawable;->c2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 92
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_281:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyContent:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "yayayaya"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->side:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_white_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$drawable;->c1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 107
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_281:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyContent:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStepText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyContent:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_calibration_img1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_transparent_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_mag_transparent_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    return-void

    nop

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


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 244
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->systemFullScreen()V

    .line 245
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_mag_calibration_start_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 287
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 250
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mTitle:Landroid/widget/TextView;

    .line 251
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_232:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCloseBt:Landroid/widget/ImageView;

    .line 253
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep1:Landroid/widget/ImageView;

    .line 254
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep2:Landroid/widget/ImageView;

    .line 255
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_step3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep3:Landroid/widget/ImageView;

    .line 256
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationPic:Landroid/widget/ImageView;

    .line 257
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStep:Landroid/widget/TextView;

    .line 258
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_start_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    .line 259
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyTitle:Landroid/widget/TextView;

    .line 260
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text4:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationNotifyContent:Landroid/widget/TextView;

    .line 261
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text5:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationIngText:Landroid/widget/TextView;

    .line 262
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 263
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_attitude_text1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStepText:Landroid/widget/TextView;

    .line 264
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibra_success_failed_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedImg:Landroid/widget/ImageView;

    .line 265
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibra_success_failed_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibraSuccessOrFailedText:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 293
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->finish()V

    .line 295
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->cancelCalibration()I

    goto :goto_0

    .line 296
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_calibration_start_btn:I

    if-ne p1, v0, :cond_3

    .line 297
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_96:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 298
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startMagCalibration()I

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->App_MediaLib_89:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 300
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_57:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 301
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->finish()V

    goto :goto_0

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_283:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 303
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startMagCalibration()I

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 310
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnMagCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;)V

    .line 312
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->completeCalibar()I

    .line 313
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 270
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 271
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->mCalibrationStart:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnMagCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;)V

    .line 274
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "FLY_ISARM_NOTIFY"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;-><init>(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setMagCalibrationStatusAlreadyCompleted(I)V
    .locals 3

    const-string v0, "MagCalibration"

    .line 207
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlreadyCompleted\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusCalibration(I)V
    .locals 3

    const-string v0, "MagCalibration"

    .line 181
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6821\u51c6\u4e2d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    .line 183
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->progress:I

    return-void
.end method

.method public setMagCalibrationStatusCalibrationFailed()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    const-string v0, "MagCalibration"

    .line 213
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u6821\u51c6\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusCalibrationSuccess()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    const-string v0, "MagCalibration"

    .line 219
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u6821\u51c6\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusCalibrationTimeout()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    const-string v0, "MagCalibration"

    .line 225
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u6821\u51c6\u8d85\u65f6"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusOrientationDetected(I)V
    .locals 3

    .line 188
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->side:I

    .line 189
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    const-string v0, "MagCalibration"

    .line 190
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrientationDetected\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusPending(I)V
    .locals 3

    const-string v0, "MagCalibration"

    .line 202
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusPending\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusSideDone(I)V
    .locals 3

    .line 195
    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getCalibrationSide(I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->magStatusSideDone:I

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    const-string v0, "MagCalibration"

    .line 197
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideDone\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setMagCalibrationStatusStartFailed()V
    .locals 2

    const-string v0, "MagCalibration"

    .line 175
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u6821\u51c6\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setMagCalibrationStatusStartSuccess()V
    .locals 4

    const-string v0, "MagCalibration"

    .line 169
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u6821\u51c6\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->handler:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
