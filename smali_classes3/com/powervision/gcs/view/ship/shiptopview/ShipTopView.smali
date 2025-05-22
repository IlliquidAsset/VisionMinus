.class public Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;
.super Landroid/widget/LinearLayout;
.source "ShipTopView.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;
    }
.end annotation


# static fields
.field public static final MSG_SONAR_BATTERY:I = 0x66

.field public static final MSG_SONAR_CONNECT_STATUS:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ShipTopView"


# instance fields
.field bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xc32
    .end annotation
.end field

.field connectText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xca6
    .end annotation
.end field

.field flTopSetting:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd29
    .end annotation
.end field

.field grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private ifFirst:Z

.field private ifRemoteFirst:Z

.field private ifReturnFirst:Z

.field private ifSeekerFirst:Z

.field private isRemoteConnected:Z

.field private mHandler:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;

.field private mLatestMode:I

.field private mLatestTitleId:I

.field private mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

.field private mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

.field private onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

.field redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

.field remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf5d
    .end annotation
.end field

.field remoteSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf5e
    .end annotation
.end field

.field sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf98
    .end annotation
.end field

.field private shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

.field sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1080
    .end annotation
.end field

.field topDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x113a
    .end annotation
.end field

.field topSetting:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1141
    .end annotation
.end field

.field topUpgradeIndicator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1144
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isRemoteConnected:Z

    .line 85
    new-instance p2, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mHandler:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;

    .line 180
    new-instance p2, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    .line 213
    new-instance p2, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    const/4 p2, 0x1

    .line 486
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifFirst:Z

    .line 487
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifSeekerFirst:Z

    .line 488
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifReturnFirst:Z

    .line 489
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifRemoteFirst:Z

    const/4 p2, -0x1

    .line 672
    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestMode:I

    .line 673
    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestTitleId:I

    .line 675
    new-instance p2, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    .line 101
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/os/Message;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isNormalMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/base/utils/SPHelperUtils;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestTitleId:I

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestTitleId:I

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestMode:I

    return p1
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 123
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->updateSonarBatteryUI(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 119
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->updateSonarConnectUI(Z)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$layout;->view_ship_top:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 131
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    .line 132
    invoke-static {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask;->create(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    .line 133
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 134
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->getInstance()Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->addSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    .line 152
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 156
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isRemoteConnected:Z

    .line 158
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onMt03RemoteConnected()V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->checkFirmwareUpdate()V

    .line 161
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-interface {p1, v1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->shipTopPresenter:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    .line 166
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 167
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->redPointNotify:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->addRedPointNotify(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;)V

    .line 168
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->isShowRedPoint()Z

    move-result p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqW4Firm"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->isShowRedPoint()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->showRed()V

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->hideRedPoint()V

    :goto_1
    return-void
.end method

.method private isNormalMode()Z
    .locals 1

    .line 702
    iget v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onMt03RemoteConnected()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setVisibility(I)V

    return-void
.end method

.method private onMt03RemoteDisconnect()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setVisibility(I)V

    return-void
.end method

.method private updateSonarBatteryUI(I)V
    .locals 0

    .line 425
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setSonarBattery(I)V

    return-void
.end method

.method private updateSonarConnectUI(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideRedPoint()V
    .locals 1

    .line 239
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$4;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 649
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 650
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->removeSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    return-void
.end method

.method public setBodyWifiLevel(I)V
    .locals 1

    const/16 v0, -0x32

    if-le p1, v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_5:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, -0x46

    if-le p1, v0, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_4:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    if-le p1, v0, :cond_2

    .line 589
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_3:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v0, -0xc8

    if-le p1, v0, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_2:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 v0, -0x12c

    if-le p1, v0, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_1:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 595
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_base_station_signal_0:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remoteSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setConnect(Z)V
    .locals 1

    .line 289
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$5;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setErrorMsgTitle(Ljava/lang/String;)V
    .locals 3

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->check_item_tv_error_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPowerRayBatteryLevel(I)V
    .locals 5

    const/16 v0, 0x64

    .line 497
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v3, 0xa

    if-gt v0, v3, :cond_1

    .line 501
    iget-boolean v3, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifReturnFirst:Z

    if-eqz v3, :cond_0

    .line 502
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/powervision/gcs/model/event/BatteryEvent;

    invoke-direct {v4, p1}, Lcom/powervision/gcs/model/event/BatteryEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 503
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifReturnFirst:Z

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_10:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-gt v0, v2, :cond_3

    .line 507
    iget-boolean p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifFirst:Z

    if-eqz p1, :cond_2

    .line 508
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/powervision/gcs/model/event/BatteryEvent;

    invoke-direct {v3, v2}, Lcom/powervision/gcs/model/event/BatteryEvent;-><init>(I)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 509
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifFirst:Z

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_20:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 p1, 0x28

    if-gt v0, p1, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_40:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 p1, 0x3c

    if-gt v0, p1, :cond_5

    .line 515
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_60:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/16 p1, 0x50

    if-gt v0, p1, :cond_6

    .line 517
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_80:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 519
    :cond_6
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_w4_battery_100:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 522
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setContentSignalText(Ljava/lang/String;)V

    if-ge v0, v2, :cond_7

    .line 526
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    goto :goto_1

    .line 528
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    :goto_1
    return-void
.end method

.method public setRemoteBatteryLevel(I)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onMt03RemoteDisconnect()V

    .line 438
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isRemoteConnected:Z

    return-void

    .line 441
    :cond_0
    iget-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isRemoteConnected:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 442
    iput-boolean v2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->isRemoteConnected:Z

    const-string v1, "ShipTopView"

    const-string v3, "11111 true: "

    .line 443
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->onMt03RemoteConnected()V

    :cond_1
    const/16 v1, 0x64

    .line 449
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0xa

    const/16 v3, 0x14

    if-gt p1, v1, :cond_3

    .line 452
    iget-boolean v4, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifRemoteFirst:Z

    if-eqz v4, :cond_2

    .line 453
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/powervision/gcs/model/event/RemoteBatteryEvent;

    invoke-direct {v5, v1}, Lcom/powervision/gcs/model/event/RemoteBatteryEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 454
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifRemoteFirst:Z

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-gt p1, v3, :cond_5

    .line 458
    iget-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifRemoteFirst:Z

    if-eqz v1, :cond_4

    .line 459
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/powervision/gcs/model/event/RemoteBatteryEvent;

    invoke-direct {v4, v3}, Lcom/powervision/gcs/model/event/RemoteBatteryEvent;-><init>(I)V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 460
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifRemoteFirst:Z

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x28

    if-gt p1, v0, :cond_6

    .line 464
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_40:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/16 v0, 0x50

    if-gt p1, v0, :cond_8

    .line 468
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_remote_battery_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setContentSignalText(Ljava/lang/String;)V

    if-ge p1, v3, :cond_9

    .line 477
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    goto :goto_1

    .line 479
    :cond_9
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    :goto_1
    return-void
.end method

.method public setRemoteWifiLevel(I)V
    .locals 1

    const/16 v0, -0x32

    if-le p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_5:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, -0x46

    if-le p1, v0, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_4:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    if-le p1, v0, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_3:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v0, -0xc8

    if-le p1, v0, :cond_3

    .line 566
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_2:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 v0, -0x12c

    if-le p1, v0, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_1:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 570
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$mipmap;->ic_remote_signal_0:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remoteSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSatellitesLevel(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setContentSignalText(Ljava/lang/String;)V

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/16 p1, 0x12c

    if-gt p2, p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSonarBattery(I)V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setVisibility(I)V

    :cond_0
    const/16 v0, 0x64

    .line 611
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xa

    const/16 v2, 0x14

    if-gt p1, v0, :cond_2

    .line 616
    iget-boolean v3, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifSeekerFirst:Z

    if-eqz v3, :cond_1

    .line 617
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/powervision/gcs/model/event/SeekerBatteryEvent;

    invoke-direct {v4, v0}, Lcom/powervision/gcs/model/event/SeekerBatteryEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 618
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifSeekerFirst:Z

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gt p1, v2, :cond_4

    .line 622
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifSeekerFirst:Z

    if-eqz v0, :cond_3

    .line 623
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/powervision/gcs/model/event/SeekerBatteryEvent;

    invoke-direct {v3, v2}, Lcom/powervision/gcs/model/event/SeekerBatteryEvent;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 624
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->ifSeekerFirst:Z

    .line 626
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    if-gt p1, v0, :cond_5

    .line 628
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_40:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_6

    .line 630
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x50

    if-gt p1, v0, :cond_7

    .line 632
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_7
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_seeker_battery_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setTitleSignalIcon(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setContentSignalText(Ljava/lang/String;)V

    if-ge p1, v2, :cond_8

    .line 641
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    goto :goto_1

    .line 643
    :cond_8
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->setShowType(I)V

    :goto_1
    return-void
.end method

.method public setTitle(I)V
    .locals 3

    .line 319
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mLatestTitleId:I

    .line 321
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->obslayout1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public showRed()V
    .locals 1

    .line 227
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showW4BodyUpgradeDialog()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topUpgradeIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateAttitudeAndGroundSpeedChanged(Lcom/powervision/natives/param/Attitude;)V
    .locals 0

    return-void
.end method

.method public updateBodyWifiRssi(I)V
    .locals 1

    .line 380
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateGPSRawInt(Lcom/powervision/natives/param/GpsRawIntParam;)V
    .locals 1

    .line 348
    iget v0, p1, Lcom/powervision/natives/param/GpsRawIntParam;->satellites_visible:I

    iget p1, p1, Lcom/powervision/natives/param/GpsRawIntParam;->eph:I

    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setSatellitesLevel(II)V

    return-void
.end method

.method public updateMt03RemoteControlBatterySurplus(I)V
    .locals 1

    .line 358
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRemoteWifiRssi(I)V
    .locals 1

    .line 369
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$7;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$7;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSonarBattery(I)V
    .locals 2

    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    .line 400
    iput v1, v0, Landroid/os/Message;->what:I

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mHandler:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSonarConnectStatus(Z)V
    .locals 2

    .line 391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    .line 392
    iput v1, v0, Landroid/os/Message;->what:I

    .line 393
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->mHandler:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSystemStatus(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V
    .locals 0

    .line 343
    iget-byte p1, p1, Lcom/powervision/natives/param/ElecgtricQuantityParam;->battery_remaining:B

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setPowerRayBatteryLevel(I)V

    return-void
.end method
