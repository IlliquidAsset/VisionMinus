.class public Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "LinkSettingFragment.java"


# static fields
.field private static final Tag:Ljava/lang/String; = "LinkSettingFragment"


# instance fields
.field private closeBt:Landroid/widget/ImageView;

.field private linkIntensity:Landroid/widget/TextView;

.field private mBandwidthSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mModeSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field mRtspBtn:Landroid/widget/ToggleButton;

.field private mSpinnerAdapter:Lcom/powervision/base/adapter/LSpinnerAdapter;

.field private mSpinnerAdapter1:Lcom/powervision/base/adapter/LSpinnerAdapter;

.field private mTitle:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private wifiSSid:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->linkIntensity:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->wifiSSid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method private initSDK()V
    .locals 4

    .line 94
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 95
    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectLinkDl01()I

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method static synthetic lambda$setListener$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LinkSettingFragment"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 63
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_link_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->initSDK()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "10M/Hz"

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "20M/Hz"

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/powervision/base/adapter/LSpinnerAdapter;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mBandwidthSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, v2, v0}, Lcom/powervision/base/adapter/LSpinnerAdapter;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mSpinnerAdapter:Lcom/powervision/base/adapter/LSpinnerAdapter;

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mBandwidthSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_167:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_168:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/powervision/base/adapter/LSpinnerAdapter;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mModeSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, v2, v0}, Lcom/powervision/base/adapter/LSpinnerAdapter;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mSpinnerAdapter1:Lcom/powervision/base/adapter/LSpinnerAdapter;

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mModeSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_152:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 71
    sget p1, Lcom/powervision/aircraft/R$id;->link_signal_strength_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->linkIntensity:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/powervision/aircraft/R$id;->wifi_ssid_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->wifiSSid:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/powervision/aircraft/R$id;->downstream_bandwidth_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mBandwidthSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 74
    sget p1, Lcom/powervision/aircraft/R$id;->video_mode_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mModeSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-void
.end method

.method public synthetic lambda$setListener$0$LinkSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$alYz_Pbf1xi_61gtPshxJxJpxk8;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$alYz_Pbf1xi_61gtPshxJxJpxk8;-><init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    sget-object v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$GNTkIWlVtwHfN_VX71YQg2xI3-8;->INSTANCE:Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LinkSettingFragment$GNTkIWlVtwHfN_VX71YQg2xI3-8;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setNotifyOnConnectLinkResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->mBandwidthSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
