.class public Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CloudPlatformFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;
    }
.end annotation


# static fields
.field private static final GET_GIMBAL_CALLBACK_VALUE:I = 0x5

.field private static final GET_GIMBAL_MODE:I = 0x3

.field private static final GIMBAL_CABRATIONING:I = 0x8

.field private static final GIMBAL_CABRATION_FAILED:I = 0x7

.field private static final GIMBAL_CABRATION_SUCCESS:I = 0x6

.field private static final PITCH_VALUE_SETTING:I = 0x1

.field private static final SET_GIMBAL_MODE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CloudPlatformFragment"

.field private static final YAW_VALUE_SETTING:I = 0x2


# instance fields
.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private clickNum:I

.field private closeBt:Landroid/widget/ImageView;

.field private followBtn:Landroid/widget/RadioButton;

.field private fpvBtn:Landroid/widget/RadioButton;

.field private gimPitchValue:Landroid/widget/TextView;

.field private gimYawValue:Landroid/widget/TextView;

.field private gimbalMode:J

.field private mCloudCalibration:Landroid/widget/TextView;

.field mCloudFineTuning:Landroid/widget/TextView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mGimbalHomingroDown:Landroid/widget/TextView;

.field private mProgress:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSeniorSetView:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

.field private pitchSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private yawSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method private initProgress()V
    .locals 2

    .line 285
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 286
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_198:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 288
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 289
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic lambda$setListener$1(Landroid/view/View;)V
    .locals 1

    .line 246
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method


# virtual methods
.method public getGimbalCalibrationResult(Ljava/lang/String;I)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudPlatformFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SUCCESS"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "FAIL"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "ADJUSTING"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mProgress:I

    .line 109
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 159
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_cloud_platform_setting_layout:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 127
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_43:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p1, v0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_275:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 146
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    goto :goto_0

    .line 139
    :cond_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_274:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 141
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    goto :goto_0

    .line 136
    :cond_3
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 129
    :cond_4
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->gimbalMode:J

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->followBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    .line 132
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->fpvBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected initData()V
    .locals 1

    .line 187
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 188
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 189
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 170
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mTitle:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_187:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->closeBt:Landroid/widget/ImageView;

    .line 173
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_pitch_angle_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->gimPitchValue:Landroid/widget/TextView;

    .line 174
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_pitch_Yaw_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->gimYawValue:Landroid/widget/TextView;

    .line 175
    sget p1, Lcom/powervision/aircraft/R$id;->seekbar_pitch_angle_alarm:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->pitchSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 176
    sget p1, Lcom/powervision/aircraft/R$id;->seekbar_Yaw_angle_alarm:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->yawSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 177
    sget p1, Lcom/powervision/aircraft/R$id;->cloud_fine_tuning:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mCloudFineTuning:Landroid/widget/TextView;

    .line 178
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_fpv_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->fpvBtn:Landroid/widget/RadioButton;

    .line 179
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_follow_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->followBtn:Landroid/widget/RadioButton;

    .line 180
    sget p1, Lcom/powervision/aircraft/R$id;->cloud_automatic_calibration:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mCloudCalibration:Landroid/widget/TextView;

    .line 181
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_homing_or_down:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mGimbalHomingroDown:Landroid/widget/TextView;

    .line 182
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_senior_set:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mSeniorSetView:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$CloudPlatformFragment(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 196
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_fpv_btn:I

    const-string v1, "PV_GIM_MODE"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 198
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_follow_btn:I

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 199
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1, v1, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 200
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->cloud_automatic_calibration:I

    if-ne p1, v0, :cond_3

    .line 201
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_2

    .line 202
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_195:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_199:I

    .line 206
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    .line 207
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$1;

    invoke-direct {v5, p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V

    const/4 v6, 0x0

    const-string v1, ""

    .line 205
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    .line 215
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 216
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->gimbal_homing_or_down:I

    if-ne p1, v0, :cond_5

    .line 217
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    if-nez p1, :cond_4

    .line 218
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v0, -0x5a

    invoke-virtual {p1, v0, v3, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalAngle(III)I

    .line 219
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_6

    .line 221
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v0, -0xa

    invoke-virtual {p1, v0, v3, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalAngle(III)I

    .line 222
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->clickNum:I

    goto :goto_0

    .line 224
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->gimbal_senior_set:I

    if-ne p1, v0, :cond_6

    .line 225
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6b

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalCalibrationResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;)V

    .line 297
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s1===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safdsadfadfafdfdf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DOWNLOAD_SUCCESS"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PV_GIM_MODE"

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-long p1, p3

    .line 89
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->gimbalMode:J

    .line 90
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p3, "UPLOAD_SUCCESS"

    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$CloudHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 239
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$CloudPlatformFragment$T5APjxefXyQqTcgGzNMt8fu2HBk;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$CloudPlatformFragment$T5APjxefXyQqTcgGzNMt8fu2HBk;-><init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalCalibrationResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;)V

    .line 241
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->fpvBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->followBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mCloudCalibration:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mGimbalHomingroDown:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mSeniorSetView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->mCloudFineTuning:Landroid/widget/TextView;

    sget-object v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$CloudPlatformFragment$wY37aqtboC6kDWerOrQH-h1OJeU;->INSTANCE:Lcom/powervision/aircraft/ui/fragment/-$$Lambda$CloudPlatformFragment$wY37aqtboC6kDWerOrQH-h1OJeU;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 249
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->pitchSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;->yawSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
