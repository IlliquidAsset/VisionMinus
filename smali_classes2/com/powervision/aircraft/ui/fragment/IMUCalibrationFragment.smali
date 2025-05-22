.class public Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "IMUCalibrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private imuCalibrationBtn:Landroid/widget/TextView;

.field private mBackBt:Landroid/widget/ImageView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mIMULayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSensorLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitle:Landroid/widget/TextView;

.field private magCalibrationBtn:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 37
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_imu_calibration_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mTitle:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_22:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 50
    sget p1, Lcom/powervision/aircraft/R$id;->calibration_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 51
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mIMULayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    sget p1, Lcom/powervision/aircraft/R$id;->sensor_calibration_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mSensorLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->imu_calibration_sure_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->imuCalibrationBtn:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/powervision/aircraft/R$id;->mag_calibration_sure_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->magCalibrationBtn:Landroid/widget/TextView;

    .line 55
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/powervision/aircraft/R$id;->calibration_imu_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public synthetic lambda$setListener$0$IMUCalibrationFragment(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 66
    sget p1, Lcom/powervision/aircraft/R$id;->calibration_imu_btn:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mIMULayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mSensorLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$id;->calibration_mag_btn:I

    if-ne p2, p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mIMULayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mSensorLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setListener$1$IMUCalibrationFragment(Ljava/lang/Boolean;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x69

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 92
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x69

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 94
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 96
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->imu_calibration_sure_text:I

    if-ne p1, v0, :cond_2

    .line 97
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 98
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-class v1, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->mag_calibration_sure_text:I

    if-ne p1, v0, :cond_3

    .line 102
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 103
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const-class v1, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 61
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->imuCalibrationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->magCalibrationBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$msgu0iOC6TGoGd4KWYI5uBlE3Tw;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$msgu0iOC6TGoGd4KWYI5uBlE3Tw;-><init>(Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "FLY_ISARM_NOTIFY"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$VPJVM9pH1Xta6DmNQZUL4Yt9oOc;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$IMUCalibrationFragment$VPJVM9pH1Xta6DmNQZUL4Yt9oOc;-><init>(Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method
