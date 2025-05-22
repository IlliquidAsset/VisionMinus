.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;
    }
.end annotation


# static fields
.field private static final GET_BODY_VERSION:I = 0x64

.field private static final GET_REMOTE_DL01_VERSION:I = 0x67

.field private static final GET_REMOTE_WCU_VERSION:I = 0x66

.field private static final GET_REMOTE_WIFI_VERSION:I = 0x65

.field private static final PSN_VERSION:I = 0x6d

.field private static final TAG:Ljava/lang/String; = "lzqUpdate"


# instance fields
.field final body:I

.field private currentBodyBattary:I

.field private currentRemoteBattary:I

.field private mBodyVersion:Ljava/lang/String;

.field private mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

.field private mPSN:Ljava/lang/String;

.field private mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

.field private mRemoteDL01Version:Ljava/lang/String;

.field private mRemoteMCUVersion:Ljava/lang/String;

.field private mRemoteWifiVersion:Ljava/lang/String;

.field releaseNote:Ljava/lang/String;

.field final remote:I

.field remote_update_content:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf60
    .end annotation
.end field

.field surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

.field type:I

.field unbinder:Lbutterknife/Unbinder;

.field versionApp:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11d7
    .end annotation
.end field

.field versionDl01:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11d8
    .end annotation
.end field

.field versionMain:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11da
    .end annotation
.end field

.field versionMcu:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11db
    .end annotation
.end field

.field versionRemote:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11dc
    .end annotation
.end field

.field versionSerial:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11dd
    .end annotation
.end field

.field versionWifi:Lcom/powervision/gcs/view/AboutVersionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11de
    .end annotation
.end field

.field warekUpdateListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->releaseNote:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    const/4 v0, 0x1

    .line 325
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->remote:I

    const/4 v0, 0x2

    .line 326
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->body:I

    .line 725
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->warekUpdateListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/4 v0, -0x1

    .line 901
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentRemoteBattary:I

    .line 902
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentBodyBattary:I

    .line 913
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$25;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$25;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Landroid/os/Message;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentRemoteBattary:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showFirmwareDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showFirmWareErrorDialog(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showUpgrade(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentBodyBattary:I

    return p1
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteDL01Version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteMCUVersion:Ljava/lang/String;

    const-string v0, "1000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteMCUVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteWifiVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mBodyVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionSerial:Lcom/powervision/gcs/view/AboutVersionView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPSN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initData()V
    .locals 2

    .line 252
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 253
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->initSystemStatusListener()V

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_82:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionApp:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_79:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionApp:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/ApkUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_81:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_123:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideDivider()V

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_124:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideDivider()V

    .line 268
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_125:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionSerial:Lcom/powervision/gcs/view/AboutVersionView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_83:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    .line 224
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    return-void
.end method

.method private initSystemStatusListener()V
    .locals 2

    .line 905
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private showFirmWareErrorDialog(II)V
    .locals 1

    .line 886
    invoke-static {p1, p2}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->newInstance(II)Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    move-result-object p1

    .line 887
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "firmwareUpdateErrorDialogFragment"

    invoke-virtual {p1, p2, v0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 888
    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;

    invoke-direct {p2, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->setOnClickListener(Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;)V

    return-void
.end method

.method private showFirmwareDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 827
    sget v0, Lcom/powervision/gcs/R$string;->Upgrade_57:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_0
    sget v0, Lcom/powervision/gcs/R$string;->Upgrade_55:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 833
    invoke-static/range {v1 .. v6}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    move-result-object p1

    .line 834
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "PVW4FirmwareDownloadFragment"

    invoke-virtual {p1, p2, p3}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 835
    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;

    invoke-direct {p2, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->setOnFirmwareDownloadListener(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;)V

    return-void
.end method

.method private showUpgrade(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->dophine_current_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x61a8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Camera is restarting, please wait about "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " seconds."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/ToastUtil;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 701
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BODYZIPPATH:Ljava/lang/String;

    goto :goto_0

    .line 703
    :cond_1
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->REMOTEBASEPATH:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    .line 707
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v7, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getMainBodyVersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mBodyVersion:Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getPsnSucceed(Ljava/lang/String;)V
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPsnSucceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqUpdate"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPSN:Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getRemoteDL01VersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 307
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteDL01Version:Ljava/lang/String;

    .line 308
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getRemoteMCUVersionSucceed(Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " detail getRemoteMCUVersionSucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqMcu"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteMCUVersion:Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getRemoteOnlineVersionSucceed(Lcom/powervision/gcs/model/net/FirmwareQueryModel;)V
    .locals 0

    return-void
.end method

.method public getRemoteUpdateSucceed()V
    .locals 0

    return-void
.end method

.method public getRemoteWifiVersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 301
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mRemoteWifiVersion:Ljava/lang/String;

    .line 302
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getVEHOnlineVersionSucceed(Lcom/powervision/gcs/model/net/FirmwareQueryModel;)V
    .locals 0

    return-void
.end method

.method public hidMcuLoading()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideLoading()V

    return-void
.end method

.method public hideBodyDownLoad()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$13;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideBodyUpdate()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$14;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideContent()V
    .locals 0

    return-void
.end method

.method public hideDl01Loading()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideLoading()V

    return-void
.end method

.method public hideDl01Update()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$17;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$17;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideMainLoading()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideLoading()V

    return-void
.end method

.method public hideMcuUpdate(I)V
    .locals 1

    .line 647
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$15;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$15;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideRemoteDownLoad()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->remote_update_content:Landroid/view/View;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$6;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideWifiLoading()V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideLoading()V

    return-void
.end method

.method public hideWifiUpdate()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$16;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$16;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_common_about_detail:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->setContentView(I)V

    .line 145
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/AboutVersionView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 175
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mHandler:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 178
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->onResume()V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-static {p0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask;->create(Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    .line 154
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 155
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPSN:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionSerial:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/AboutVersionView;->setVersion(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->initData()V

    .line 158
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->initListener()V

    return-void
.end method

.method public showBodyDownLoad()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showBodyDownLoad(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public showBodyUpdate()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showBodyUpdate(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showDl01Loaing()V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showLoading()V

    return-void
.end method

.method public showDl01Update()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$8;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showErrorDialog(II)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;II)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showMainLoading()V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showLoading()V

    return-void
.end method

.method public showMcuLoading()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showLoading()V

    return-void
.end method

.method public showMcuUpdate()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$7;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showRemoteDownLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 332
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {p2}, Lcom/powervision/gcs/view/AboutVersionView;->showDownload()V

    .line 333
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance p4, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    return-void
.end method

.method public showRemoteDownLoad(Z)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showDownload()V

    .line 355
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    return-void
.end method

.method public showW4UpgradeDialog(ZILjava/lang/String;)V
    .locals 6

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqTye"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const-string v1, "lzqW4_firm_download"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-boolean v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArm:Z

    if-nez v0, :cond_0

    const-string p1, " \u6709\u9501 \u4e0d\u8ba9\u5347\u7ea7"

    .line 759
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x68

    .line 760
    invoke-virtual {p0, p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getShipCameraMenuView()Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, " \u6b63\u5728\u5f55\u50cf \u4e0d\u8ba9\u5347\u7ea7"

    .line 767
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x69

    .line 768
    invoke-virtual {p0, p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const/16 v3, 0x67

    const/16 v4, 0x32

    if-ne p2, v0, :cond_3

    .line 775
    iget v5, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentBodyBattary:I

    if-ge v5, v4, :cond_2

    const-string p1, " \u7535\u91cf\u4e0d\u884c "

    .line 776
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0, v3, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void

    .line 781
    :cond_2
    iget v5, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentRemoteBattary:I

    if-eq v5, v2, :cond_4

    if-ge v5, v4, :cond_4

    const-string p1, " \u9065\u63a7\u5668 \u7535\u91cf\u4e0d\u884c "

    .line 784
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p0, v3, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void

    .line 791
    :cond_3
    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->currentRemoteBattary:I

    if-eq v1, v2, :cond_4

    if-ge v1, v4, :cond_4

    .line 792
    invoke-virtual {p0, v3, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void

    :cond_4
    if-ne p2, v0, :cond_5

    .line 799
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->getBodyReleaseNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->releaseNote:Ljava/lang/String;

    goto :goto_0

    .line 801
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->getRemoteReleaseNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->releaseNote:Ljava/lang/String;

    .line 804
    :goto_0
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;-><init>()V

    .line 805
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirmwareUpdateRemindDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 807
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;

    invoke-direct {v1, p0, p2, p3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->setOnDialogListener(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;)V

    if-eqz p1, :cond_6

    .line 819
    invoke-virtual {v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment;->showSingleSureBtn()V

    :cond_6
    return-void
.end method

.method public showWifiLoading()V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showLoading()V

    return-void
.end method

.method public showWifiUpdate()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$9;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public storeTheFiles(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$18;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchMCSX(Ljava/lang/String;)V
    .locals 2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u5e26\u5bbd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 722
    invoke-static {v0, p1, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method
