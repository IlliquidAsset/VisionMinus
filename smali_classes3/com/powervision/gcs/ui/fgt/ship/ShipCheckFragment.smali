.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ShipCheckFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipCheckFragment"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

.field private battery_remaining:I

.field child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field group_head:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ivClose:Landroid/widget/ImageView;

.field private mOldRemoteSurplus:I

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

.field private selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

.field private shipCheckSelfListview:Landroid/widget/ExpandableListView;

.field private shipMessageUtils:Lcom/powervision/gcs/utils/ShipMessageUtils;

.field surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

.field private temperature:I

.field private w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mOldRemoteSurplus:I

    .line 200
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    .line 312
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    .line 333
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 360
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->handleRemoteMode(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 44
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->battery_remaining:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->battery_remaining:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->temperature:I

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->temperature:I

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mOldRemoteSurplus:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mOldRemoteSurplus:I

    return p1
.end method

.method private getSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    shr-int/lit8 v1, p1, 0x0

    const/4 v2, 0x1

    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    and-int/2addr v1, v2

    const/4 v4, 0x0

    .line 450
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    shr-int/lit8 v1, p1, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 455
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    shr-int/lit8 v1, p1, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 460
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 462
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    shr-int/lit8 v1, p1, 0x3

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 465
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 467
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    shr-int/lit8 v1, p1, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 470
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 472
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    shr-int/lit8 p1, p1, 0x5

    and-int/2addr p1, v2

    if-nez p1, :cond_5

    .line 475
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 477
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    return-object v0
.end method

.method private getSensorList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 405
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x0

    .line 407
    aget-char v2, p1, v1

    const/4 v3, 0x1

    const/16 v4, 0x31

    if-eq v2, v4, :cond_2

    const/4 v2, 0x6

    aget-char v2, p1, v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :goto_1
    aget-char v2, p1, v3

    if-eq v2, v4, :cond_4

    const/4 v2, 0x2

    aget-char v2, p1, v2

    if-eq v2, v4, :cond_4

    const/4 v2, 0x7

    aget-char v2, p1, v2

    if-eq v2, v4, :cond_4

    const/16 v2, 0x8

    aget-char v2, p1, v2

    if-ne v2, v4, :cond_3

    goto :goto_2

    .line 416
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 414
    :cond_4
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v2, 0x5

    .line 424
    aget-char v2, p1, v2

    if-eq v2, v4, :cond_6

    const/16 v2, 0xa

    aget-char p1, p1, v2

    if-ne p1, v4, :cond_5

    goto :goto_4

    .line 427
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 425
    :cond_6
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    return-object v0
.end method

.method private handleRemoteMode(I)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->group_head:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->child:Ljava/util/List;

    .line 115
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_8:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 116
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_10:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 117
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_11:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 118
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_12:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 119
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_13:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 120
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_14:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    .line 121
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_StatusBar_5:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addGroup(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    .line 123
    invoke-virtual {p0, v0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addChild(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 124
    invoke-virtual {p0, v0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addChild(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 125
    invoke-virtual {p0, v0, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->addChild(ILjava/lang/String;)V

    .line 126
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->group_head:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->child:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->shipCheckSelfListview:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->shipCheckSelfListview:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 143
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->shipMessageUtils:Lcom/powervision/gcs/utils/ShipMessageUtils;

    .line 144
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 145
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->shipMessageUtils:Lcom/powervision/gcs/utils/ShipMessageUtils;

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSelfError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getSensorList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    invoke-virtual {v2, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setAdapter(Ljava/util/List;)V

    .line 152
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 153
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PVSDK_W4_API;->setBatteryStatusListener(Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;)V

    .line 154
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v0

    new-instance v2, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v3, 0x1

    const-string v4, "PV_V_STAT"

    invoke-direct {v2, v3, v4, v1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PVSDK_W4_API;->addRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V

    .line 159
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v0

    new-instance v2, Lcom/powervision/natives/connect/ParamMsg;

    const-string v4, "PV_RC_MODE"

    invoke-direct {v2, v3, v4, v1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x14d

    invoke-virtual {v0, v2, v1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->initMt03RemoteControlBatterySurplusListener()V

    .line 162
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getSDCardState()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCheckFragment$MPWh7_bgLWgkmL19HK3M9J67Uyk;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCheckFragment$MPWh7_bgLWgkmL19HK3M9J67Uyk;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setOnCheckListener(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;)V

    return-void
.end method

.method private initMt03RemoteControlBatterySurplusListener()V
    .locals 2

    .line 392
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 103
    sget v0, Lcom/powervision/gcs/R$id;->ship_check_self_listview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->shipCheckSelfListview:Landroid/widget/ExpandableListView;

    .line 105
    sget v0, Lcom/powervision/gcs/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->ivClose:Landroid/widget/ImageView;

    return-void
.end method

.method public static newInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;
    .locals 1

    .line 64
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addChild(ILjava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 377
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addGroup(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->group_head:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->child:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkState()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->getCheckStatus()Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->getSensors()I

    return-void
.end method

.method public getSDCardState()V
    .locals 2

    .line 308
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getSdState()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public synthetic lambda$initListener$0$ShipCheckFragment(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103022f

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->setStyle(II)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_ship_check:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->initView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->initData()V

    .line 87
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 94
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setBatteryStatusListener(Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->selfCheckAdapter:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setOnCheckListener(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->removeRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 99
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method
