.class public Lcom/powervision/aircraft/ui/views/GeneralSettingsView;
.super Landroid/widget/LinearLayout;
.source "GeneralSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;
    }
.end annotation


# static fields
.field public static final BASIC_SETTING_TAG:I = 0x6

.field public static final BATTERY_SETTING_TAG:I = 0x4

.field public static final CLOUD_PLATFORM_SETTING_TAG:I = 0x5

.field public static final CONTROLLER_MATCH_TAG:I = 0x6a

.field public static final FLIGHT_CONTROL_SETTING_TAG:I = 0x0

.field public static final GIMBAL_SENIOR_SET:I = 0x6b

.field public static final LIVE_STREAM_MENU:I = 0x6e

.field public static final PERCEPTION_SETTING_TAG:I = 0x1

.field public static final REMOTE_CONTROL_SETTING_TAG:I = 0x2

.field public static final REMOTE_INSTRUCTIONS:I = 0x6c

.field public static final VERSION_SHOW_MENU:I = 0x6d


# instance fields
.field final BASIC_SETTING_ABOUT_TAG:I

.field final IMU_CALIBRATION_TAG:I

.field final REMOTE_SETTING_MODE_TAG:I

.field final RETURN_POINT_SETTING_TAG:I

.field final ROCKER_CALIBRATION_SETTING_TAG:I

.field final ROCKER_EXP_SETTING_TAG:I

.field private liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

.field private mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

.field private mBasicSettingRb:Landroid/widget/RadioButton;

.field private mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

.field private mBatterySettingRb:Landroid/widget/RadioButton;

.field private mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

.field private mCloudPlatformRb:Landroid/widget/RadioButton;

.field private mCommonLayout:Landroid/widget/FrameLayout;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

.field private mFlightControlSettingRb:Landroid/widget/RadioButton;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

.field private mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

.field private mIMUCalibrationStartFragment:Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;

.field private mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

.field private mPerceptionSettingRb:Landroid/widget/RadioButton;

.field private mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

.field private mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

.field private mRemoteControlSettingRb:Landroid/widget/RadioButton;

.field private mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

.field private mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

.field private mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

.field private mSettgingGroup:Landroid/widget/RadioGroup;

.field private mShdowView:Landroid/view/View;

.field private matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

.field private remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

.field private versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 89
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->RETURN_POINT_SETTING_TAG:I

    const/16 p2, 0x65

    .line 93
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->ROCKER_EXP_SETTING_TAG:I

    const/16 p2, 0x66

    .line 94
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->ROCKER_CALIBRATION_SETTING_TAG:I

    const/16 p2, 0x67

    .line 95
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->BASIC_SETTING_ABOUT_TAG:I

    const/16 p2, 0x68

    .line 96
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->REMOTE_SETTING_MODE_TAG:I

    const/16 p2, 0x69

    .line 100
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->IMU_CALIBRATION_TAG:I

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initViews(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 89
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->RETURN_POINT_SETTING_TAG:I

    const/16 p2, 0x65

    .line 93
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->ROCKER_EXP_SETTING_TAG:I

    const/16 p2, 0x66

    .line 94
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->ROCKER_CALIBRATION_SETTING_TAG:I

    const/16 p2, 0x67

    .line 95
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->BASIC_SETTING_ABOUT_TAG:I

    const/16 p2, 0x68

    .line 96
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->REMOTE_SETTING_MODE_TAG:I

    const/16 p2, 0x69

    .line 100
    iput p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->IMU_CALIBRATION_TAG:I

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initViews(Landroid/content/Context;I)V

    return-void
.end method

.method private addTagToWihichView(ILandroidx/fragment/app/Fragment;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 407
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 404
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->cloud_platform_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 401
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 395
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 392
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 389
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 386
    :pswitch_9
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 383
    :pswitch_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initFragmentByIndex(IZ)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    :cond_0
    if-eqz p1, :cond_12

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    .line 519
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    if-nez p1, :cond_1

    .line 520
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    :cond_1
    if-eqz p2, :cond_2

    .line 523
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 525
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 527
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_7

    .line 507
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    if-nez p1, :cond_4

    .line 508
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    .line 509
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCommonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 512
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 514
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 516
    :goto_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_7

    .line 496
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    if-nez p1, :cond_7

    .line 497
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    :cond_7
    if-eqz p2, :cond_8

    .line 500
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    .line 502
    :cond_8
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 504
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->cloud_platform_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_7

    .line 485
    :cond_9
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    if-nez p1, :cond_a

    .line 486
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    :cond_a
    if-eqz p2, :cond_b

    .line 489
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 491
    :cond_b
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 493
    :goto_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->battery_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_7

    .line 462
    :cond_c
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    if-nez p1, :cond_d

    .line 463
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    .line 464
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCommonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    :cond_d
    if-eqz p2, :cond_e

    .line 467
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_4

    .line 469
    :cond_e
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 471
    :goto_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_7

    .line 451
    :cond_f
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    if-nez p1, :cond_10

    .line 452
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    :cond_10
    if-eqz p2, :cond_11

    .line 455
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_5

    .line 457
    :cond_11
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 459
    :goto_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->perception_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_7

    .line 440
    :cond_12
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    if-nez p1, :cond_13

    .line 441
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    :cond_13
    if-eqz p2, :cond_14

    .line 444
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_6

    .line 446
    :cond_14
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 448
    :goto_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget p2, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_7
    return-void
.end method

.method private initFragments(I)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 207
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 208
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    .line 210
    invoke-direct {p0, p1, v1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initFragmentByIndex(IZ)V

    .line 211
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_content_layout:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initListenters()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingRb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mShdowView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;I)V
    .locals 1

    .line 186
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_general_setting_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 188
    sget v0, Lcom/powervision/aircraft/R$id;->shadow_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mShdowView:Landroid/view/View;

    .line 189
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    .line 191
    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    .line 192
    sget v0, Lcom/powervision/aircraft/R$id;->perception_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingRb:Landroid/widget/RadioButton;

    .line 193
    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    .line 195
    sget v0, Lcom/powervision/aircraft/R$id;->battery_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingRb:Landroid/widget/RadioButton;

    .line 196
    sget v0, Lcom/powervision/aircraft/R$id;->cloud_platform_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformRb:Landroid/widget/RadioButton;

    .line 197
    sget v0, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingRb:Landroid/widget/RadioButton;

    .line 198
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_content_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 199
    sget v0, Lcom/powervision/aircraft/R$id;->common_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCommonLayout:Landroid/widget/FrameLayout;

    .line 200
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initFragments(I)V

    .line 201
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initListenters()V

    return-void
.end method

.method public static setOnCloseClickListener(Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V
    .locals 0

    .line 644
    invoke-interface {p0, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;->onCloseClick(Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V

    return-void
.end method


# virtual methods
.method public addSecondaryFragmentByIndex(ILandroidx/fragment/app/Fragment;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    if-nez v0, :cond_2

    .line 353
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 346
    :pswitch_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    if-nez v0, :cond_3

    .line 347
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 340
    :pswitch_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    if-nez v0, :cond_4

    .line 341
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 334
    :pswitch_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    if-nez v0, :cond_5

    .line 335
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 328
    :pswitch_6
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    if-nez v0, :cond_6

    .line 329
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 322
    :pswitch_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    if-nez v0, :cond_7

    .line 323
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 316
    :pswitch_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    if-nez v0, :cond_8

    .line 317
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 310
    :pswitch_9
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    if-nez v0, :cond_9

    .line 311
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    .line 313
    :cond_9
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 304
    :pswitch_a
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    if-nez v0, :cond_a

    .line 305
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_b

    .line 372
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_content_layout:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {p2, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 373
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 375
    :cond_b
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 377
    :goto_1
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->addTagToWihichView(ILandroidx/fragment/app/Fragment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public backToLastFragment(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 600
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioGroup;->setTag(ILjava/lang/Object;)V

    .line 602
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->liveStreamFragment:Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 594
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioGroup;->setTag(ILjava/lang/Object;)V

    .line 596
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->versionShowFragment:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 588
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 590
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->remoteInstructionsFragment:Lcom/powervision/aircraft/ui/fragment/RemoteInstructionsFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 582
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->cloud_platform_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 584
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mGimbalSeniorFragment:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 570
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 572
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->matchFragment:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 564
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 566
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mIMUCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/IMUCalibrationFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 576
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    if-eqz p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 578
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 558
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    if-eqz p1, :cond_0

    .line 559
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 560
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mAboutFragment:Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 552
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 554
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteCalibrationFragment:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 546
    :pswitch_9
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    if-eqz p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 548
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRockerSettingFragment:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 540
    :pswitch_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    if-eqz p1, :cond_0

    .line 541
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 542
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mReturnPointSettingFragment:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public intoCustomKeyFragment(I)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 615
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    if-nez p1, :cond_0

    .line 616
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mSettgingGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/powervision/aircraft/R$id;->battery_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 619
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 228
    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    if-ne p1, v0, :cond_3

    .line 229
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    if-nez p1, :cond_0

    .line 230
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingRb:Landroid/widget/RadioButton;

    sget v0, Lcom/powervision/aircraft/R$id;->flight_control_setting_rb:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 233
    instance-of v0, p1, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 235
    instance-of v0, p1, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 238
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFlightControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 240
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->perception_setting_rb:I

    if-ne p1, v0, :cond_5

    .line 241
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    if-nez p1, :cond_4

    .line 242
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mPerceptionSettingFragment:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 245
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_setting_rb:I

    if-ne p1, v0, :cond_7

    .line 246
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    if-nez p1, :cond_6

    .line 247
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    .line 248
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCommonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    .line 250
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mRemoteControlSettingFragment:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 257
    :cond_7
    sget v0, Lcom/powervision/aircraft/R$id;->battery_setting_rb:I

    if-ne p1, v0, :cond_9

    .line 258
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    if-nez p1, :cond_8

    .line 259
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    .line 261
    :cond_8
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBatterySettingFragment:Lcom/powervision/aircraft/ui/fragment/BatterySettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 262
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->cloud_platform_rb:I

    if-ne p1, v0, :cond_b

    .line 263
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    if-nez p1, :cond_a

    .line 264
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    .line 266
    :cond_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCloudPlatformFragment:Lcom/powervision/aircraft/ui/fragment/CloudPlatformFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 267
    :cond_b
    sget v0, Lcom/powervision/aircraft/R$id;->basic_setting_rb:I

    if-ne p1, v0, :cond_d

    .line 268
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    if-nez p1, :cond_c

    .line 269
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    .line 270
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCommonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    .line 272
    :cond_c
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mBasicSettingFragment:Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 273
    :cond_d
    sget v0, Lcom/powervision/aircraft/R$id;->shadow_view:I

    if-ne p1, v0, :cond_e

    .line 274
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1, p0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setOnCloseClickListener(Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V

    :cond_e
    :goto_0
    return-void
.end method

.method public setContentPaddingEnd(I)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public showSelectedIndex(I)V
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->initFragmentByIndex(IZ)V

    return-void
.end method

.method public switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 284
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 285
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 286
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_content_layout:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method
