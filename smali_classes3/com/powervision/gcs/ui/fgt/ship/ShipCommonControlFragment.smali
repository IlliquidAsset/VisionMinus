.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipCommonControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;,
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;,
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;,
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShipCommonControlFr"


# instance fields
.field private canShowRock:Z

.field confirmArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf76
    .end annotation
.end field

.field dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field private mRemoteLogic:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

.field mRockModeLogic:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

.field remoteArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffd
    .end annotation
.end field

.field remoteMode:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf57
    .end annotation
.end field

.field remoteModeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf58
    .end annotation
.end field

.field remoteModeVS:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf59
    .end annotation
.end field

.field private remoteModeView:Landroid/view/View;

.field remotePairArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf5a
    .end annotation
.end field

.field remotePairVS:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf5b
    .end annotation
.end field

.field private remotePairView:Landroid/view/View;

.field private remotePairViewHolder:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

.field rlConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf73
    .end annotation
.end field

.field rlConfirmLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf75
    .end annotation
.end field

.field rlRemotePairLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf7c
    .end annotation
.end field

.field rockArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xffe
    .end annotation
.end field

.field rockConfirmVS:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf88
    .end annotation
.end field

.field rockMode:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf87
    .end annotation
.end field

.field rockModeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf89
    .end annotation
.end field

.field rockModeVS:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf8a
    .end annotation
.end field

.field private rockModeView:Landroid/view/View;

.field private timerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field tvRemotePair:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x119a
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 555
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    return-void
.end method

.method static synthetic access$402(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->timerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairViewHolder:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    return-object p0
.end method

.method private initListener()V
    .locals 0

    return-void
.end method

.method private updateRemoteConnectUI()V
    .locals 6

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->canShowRock:Z

    .line 442
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 443
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteMode:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->tvRemotePair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlRemotePairLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->confirmArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateRemoteDisconnectUI()V
    .locals 7

    const-string v0, "ShipCommonControlFr"

    const-string v1, "updateRemoteWifiDisconnectUI: 1"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 469
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->canShowRock:Z

    .line 470
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 471
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteMode:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 476
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->tvRemotePair:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/powervision/gcs/R$color;->gary:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlRemotePairLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 480
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->confirmArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rlConfirmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 486
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v1, "updateRemoteWifiDisconnectUI: 2"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_setting_common_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->setContentView(I)V

    return-void
.end method

.method public synthetic lambda$processLogic$0$ShipCommonControlFragment(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->updateRemoteConnectUI()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->updateRemoteDisconnectUI()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 368
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 375
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->unbinder:Lbutterknife/Unbinder;

    .line 376
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 379
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {p2, p3}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 405
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 387
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    const-string v0, "ShipCommonControlFr"

    const-string v1, "onDestroyView: "

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 392
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 394
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->mRemoteLogic:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->mRemoteLogic:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->unbindView()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->timerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "ShipCommonControlFr"

    const-string v0, "processLogic: "

    .line 140
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->updateRemoteConnectUI()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->updateRemoteDisconnectUI()V

    .line 166
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$dt2XdVqv_N2zpBRrqm-J9cB7oDQ;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonControlFragment$dt2XdVqv_N2zpBRrqm-J9cB7oDQ;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 174
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->initListener()V

    return-void
.end method

.method public remote_mode()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf57
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 323
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->canShowRock:Z

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeVS:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    .line 325
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->mRemoteLogic:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    .line 326
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onBindRemoteModeView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 335
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public rl_remote_pair_layout()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf7c
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 348
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->canShowRock:Z

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairVS:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    .line 350
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairViewHolder:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    .line 351
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public rock_confirm_mode()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf75
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showRockerCalibrateFragment()V

    return-void
.end method

.method public rock_mode()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf87
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 292
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->canShowRock:Z

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeVS:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    .line 295
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->mRockModeLogic:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    .line 296
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->mRockModeLogic:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteModeView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remoteArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockModeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->rockArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCommonControlFr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->setRemotePair(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_0
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_126:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :goto_0
    return-void
.end method

.method public showScanResult(Lcom/powervision/gcs/model/event/SeekerScanEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairViewHolder:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    invoke-virtual {p1}, Lcom/powervision/gcs/model/event/SeekerScanEvent;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->setEtPsn(Ljava/lang/String;)V

    .line 1165
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->remotePairViewHolder:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->access$1200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)V

    return-void
.end method
