.class public Lcom/powervision/home/ui/fragment/DvModeMainFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "DvModeMainFragment.java"

# interfaces
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;
    }
.end annotation


# static fields
.field private static final SET_CHANGE_WIFI_TIMEOUT:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "DvModeMainFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isConnectSuccess:Z

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mDVModeMainHandler:Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;

.field private mEditSsid:Landroid/widget/EditText;

.field private mRequestCode:I

.field private mWifiBtn:Landroid/widget/Button;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private ssid:Ljava/lang/String;

.field private ssidEditStr:Ljava/lang/String;

.field private wifiConnectUtils:Lcom/powervision/base/utils/WifiConnectUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/16 v0, 0x3e9

    .line 40
    iput v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mRequestCode:I

    .line 55
    new-instance v0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mDVModeMainHandler:Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Landroid/os/Message;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->processSsid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssidEditStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->isConnectSuccess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private checkWifiStartName(Ljava/lang/String;)Z
    .locals 1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "EggX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AP03"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 83
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_0

    .line 84
    iget-boolean p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->isConnectSuccess:Z

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 86
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_DV_Msg_24_4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-static {p0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lcom/powervision/home/R$id;->action_2_help:I

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method

.method private processSsid(Ljava/lang/String;)V
    .locals 1

    .line 222
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->checkWifiStartName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 107
    sget v0, Lcom/powervision/home/R$layout;->home_dv_main_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 176
    new-instance v0, Lcom/powervision/base/utils/WifiConnectUtils;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/WifiConnectUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->wifiConnectUtils:Lcom/powervision/base/utils/WifiConnectUtils;

    .line 177
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_DV_SSID"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssid:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssid:Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->checkWifiStartName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    new-instance v1, Lcom/powervision/home/ui/fragment/DvModeMainFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment$1;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 112
    sget p1, Lcom/powervision/home/R$id;->edit_ssid:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    .line 113
    sget p1, Lcom/powervision/home/R$id;->image_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/powervision/home/R$id;->image_2_qr:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    sget v1, Lcom/powervision/home/R$id;->text_help:I

    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    sget v2, Lcom/powervision/home/R$id;->wifi_connect_button:I

    invoke-virtual {p0, v2}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    .line 118
    new-instance v2, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v3, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 119
    new-instance v2, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$8Q1WWjSBFjZ0IXk6xlZbsQixrHQ;

    invoke-direct {v2, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$8Q1WWjSBFjZ0IXk6xlZbsQixrHQ;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget-object p1, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$9K70cm-pBTMQemZX_j78S4eUAKw;->INSTANCE:Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$9K70cm-pBTMQemZX_j78S4eUAKw;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance p1, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$HLQcUao5Kn_86KnS_SYeekP_Www;

    invoke-direct {p1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$HLQcUao5Kn_86KnS_SYeekP_Www;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mWifiBtn:Landroid/widget/Button;

    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$HDyDokVvcPjbgm_MMOgImpy7t3A;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeMainFragment$HDyDokVvcPjbgm_MMOgImpy7t3A;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initView$0$DvModeMainFragment(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$2$DvModeMainFragment(Landroid/view/View;)V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_34:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mRequestCode:I

    const/4 v1, 0x1

    .line 130
    invoke-static {p0, v1, p1, v0}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->startConnectScanActivity(Landroidx/fragment/app/Fragment;ILjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initView$3$DvModeMainFragment(Landroid/view/View;)V
    .locals 3

    .line 137
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->wifiConnectUtils:Lcom/powervision/base/utils/WifiConnectUtils;

    invoke-virtual {p1}, Lcom/powervision/base/utils/WifiConnectUtils;->isWifiOpened()Z

    move-result p1

    const/16 v0, 0x1d

    if-nez p1, :cond_1

    .line 138
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    .line 139
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.panel.action.WIFI"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_95:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssidEditStr:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->checkWifiStartName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 149
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "12345678"

    if-lt p1, v0, :cond_2

    .line 150
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->wifiConnectUtils:Lcom/powervision/base/utils/WifiConnectUtils;

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssidEditStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/WifiConnectUtils;->addNetWorkQ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->wifiConnectUtils:Lcom/powervision/base/utils/WifiConnectUtils;

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->ssidEditStr:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/base/utils/WifiConnectUtils;->addNetWork(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 154
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mDVModeMainHandler:Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;

    const/16 v0, 0x6e

    const-wide/16 v1, 0x1f40

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/home/ui/fragment/DvModeMainFragment$DVModeMainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget p2, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mRequestCode:I

    if-ne p2, p1, :cond_1

    const-string p1, "qr_result_code"

    .line 236
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ssid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const-string v0, "onDeviceConnectionChange: onDetach ... "

    .line 100
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    if-nez v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment$2;-><init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const-string v0, "DvModeMainFragment"

    const-string v1, "onResume: "

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStart()V

    const-string v0, "DvModeMainFragment"

    const-string v1, "onStart: "

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 213
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method
