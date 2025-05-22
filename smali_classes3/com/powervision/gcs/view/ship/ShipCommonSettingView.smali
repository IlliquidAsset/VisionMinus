.class public Lcom/powervision/gcs/view/ship/ShipCommonSettingView;
.super Landroid/widget/RelativeLayout;
.source "ShipCommonSettingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipCommonSettingView$IRemoveContentListener;
    }
.end annotation


# instance fields
.field private activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field private cameraType:I

.field commonRoot:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc9b
    .end annotation
.end field

.field contentTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcb5
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private framents:[Ljava/lang/String;

.field private mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

.field private mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

.field private mShipCommonMaintenanceFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

.field private mShipCommonbatteryFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

.field private mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

.field private mTitles:[Ljava/lang/String;

.field redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

.field rithtCancelBt:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf70
    .end annotation
.end field

.field shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff7
    .end annotation
.end field

.field private shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field shipCommonBatteyBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff8
    .end annotation
.end field

.field shipCommonControlBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff9
    .end annotation
.end field

.field shipCommonDetail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffa
    .end annotation
.end field

.field shipCommonMaintenanceBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffb
    .end annotation
.end field

.field shipCommonMenu:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffc
    .end annotation
.end field

.field shipLeftBack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x101e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    new-array v0, p2, [Ljava/lang/String;

    .line 71
    const-class v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->framents:[Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_113:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 79
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_35:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_114:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    .line 81
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_43:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    .line 82
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_56:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mTitles:[Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->cameraType:I

    .line 132
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    .line 98
    sget p2, Lcom/powervision/gcs/R$layout;->ship_common_setting:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->context:Landroid/content/Context;

    .line 100
    iput p3, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->cameraType:I

    .line 101
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 102
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 107
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    .line 108
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonbatteryFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    .line 109
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonMaintenanceFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    .line 110
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    .line 111
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->context:Landroid/content/Context;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 115
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 116
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 117
    sget v1, Lcom/powervision/gcs/R$id;->ship_common_detail:I

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonControlBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mTitles:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->commonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->commonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    .line 123
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->addRedPointNotify(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;)V

    .line 124
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->isShowRedPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->showRed()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->hideRed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonbatteryFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonbatteryFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonMaintenanceFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonMaintenanceFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method

.method public closeLines()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setToggleChecked(Z)V

    :cond_0
    return-void
.end method

.method public closeMenu()V
    .locals 0

    return-void
.end method

.method hideRed()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;

    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$3;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/RedPointRadioButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openLines()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setToggleChecked(Z)V

    :cond_0
    return-void
.end method

.method ritht_cancel_bt()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf70
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p0, v0, p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipCommonSettingView$IRemoveContentListener;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    return-void
.end method

.method public setClearModeChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setClearModeChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public setOnRemoveContentListener(Lcom/powervision/gcs/view/ship/ShipCommonSettingView$IRemoveContentListener;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V
    .locals 0

    .line 321
    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$IRemoveContentListener;->onRemoveContent(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    return-void
.end method

.method public setUnitChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setUnitChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;)V

    :cond_0
    return-void
.end method

.method ship_common_about_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xff7
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_common_battey_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xff8
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonbatteryFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_common_control_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xff9
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonControlFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mTitles:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method ship_common_maintenance_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xffb
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonMaintenanceFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_common_sonar_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfff
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipSonarSetFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_left_back()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x101e
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mShipCommonAboutFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public showAboutDetailFragment()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutDetailFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_68:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public showDetailFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 261
    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipLeftBack:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method showRed()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;

    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/RedPointRadioButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 191
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 192
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 193
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$id;->ship_common_detail:I

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->framents:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->contentTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->mTitles:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
