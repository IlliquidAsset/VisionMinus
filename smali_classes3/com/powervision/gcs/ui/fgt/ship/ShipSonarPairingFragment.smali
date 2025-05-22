.class public Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipSonarPairingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;
    }
.end annotation


# static fields
.field private static final PSN_PARAM:Ljava/lang/String; = "psn_param"


# instance fields
.field private final SONAR_PAIR_FINDER_STATE_CONNECT_BREAK:I

.field private final SONAR_PAIR_FINDER_STATE_CONNECT_ERROR:I

.field private final SONAR_PAIR_FINDER_STATE_CONNECT_OK:I

.field private final SONAR_PAIR_FINDER_STATE_SAVE_OK:I

.field private final SONAR_PAIR_FINDER_STATE_SET_FAIL:I

.field private final SONAR_PAIR_FINDER_STATE_SET_OK:I

.field private electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

.field private mPsnParam:Ljava/lang/String;

.field private rayPairFishFinderListener:Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairFishFinderListener;

.field sonarOkBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x107d
    .end annotation
.end field

.field sonarPairTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x107e
    .end annotation
.end field

.field sonarParingLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x107f
    .end annotation
.end field

.field sonarSsidView:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1082
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_CONNECT_ERROR:I

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_CONNECT_OK:I

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_SET_OK:I

    const/4 v0, 0x3

    .line 33
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_SAVE_OK:I

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_SET_FAIL:I

    const/4 v0, 0x5

    .line 35
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->SONAR_PAIR_FINDER_STATE_CONNECT_BREAK:I

    .line 102
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

    .line 142
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->rayPairFishFinderListener:Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairFishFinderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;Landroid/os/Message;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 117
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->sonar_pair_finder_state_connect_break:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->showPairingErrorDialog()V

    .line 134
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->sonar_pair_finder_state_set_fail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->sonar_pair_finder_state_save_ok:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->showSucceedDialog()V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->sonar_pair_finder_state_connect_ok:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->sonar_pair_finder_state_connect_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;
    .locals 3

    .line 55
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "psn_param"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showPairingErrorDialog()V
    .locals 0

    return-void
.end method

.method private showSucceedDialog()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    sget p1, Lcom/powervision/gcs/R$layout;->fragment_ship_sonar_pairing:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->setContentView(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "lzqSonar"

    const-string v0, "\u5bfb\u9c7c\u5668\u914d\u5bf9 onCreate"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "psn_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->mPsnParam:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    const-string v0, "lzqSonar"

    const-string v1, "\u5bfb\u9c7c\u5668\u914d\u5bf9 onDestroy"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->electronicHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
