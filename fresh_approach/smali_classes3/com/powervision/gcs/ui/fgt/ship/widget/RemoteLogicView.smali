.class public Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;
.super Ljava/lang/Object;
.source "RemoteLogicView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteLogicView"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final context:Landroid/content/Context;

.field private isSetRemoteRockerModeCommon:Z

.field remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

.field private remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

.field private rl_remote_common_setting:Landroid/widget/RelativeLayout;

.field private rl_remote_custom_setting:Landroid/widget/RelativeLayout;

.field private rl_rocker_common_view:Landroid/widget/RelativeLayout;

.field private rl_rocker_custom_view:Landroid/widget/LinearLayout;

.field private tv_remote_common_setting:Landroid/widget/TextView;

.field private tv_remote_custom_setting:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    .line 122
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    .line 58
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->setMt03RemoteMode(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->setModeSelect(I)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 27
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getRemoteMode()V
    .locals 5

    const-string v0, "RemoteLogicView"

    const-string v1, "getRemoteMode: "

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "PV_RC_MODE"

    invoke-direct {v1, v3, v4, v2}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    return-void
.end method

.method private onCommonUIShow()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_common_setting:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$drawable;->bottom_blue_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 295
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_custom_setting:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_common_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_custom_view:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private onCustomUIShow()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_common_setting:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 302
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_custom_setting:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$drawable;->bottom_blue_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 303
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_common_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_custom_view:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private onMode1Select()V
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCustomUIShow()V

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->setMode1UI()V

    return-void
.end method

.method private onMode2Select()V
    .locals 1

    .line 274
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCustomUIShow()V

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->setMode2UI()V

    return-void
.end method

.method private onMode3Select()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCustomUIShow()V

    .line 280
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->setMode3UI()V

    return-void
.end method

.method private onMode4Select()V
    .locals 1

    .line 284
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->isRemoteRockerModeCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCommonUIShow()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCustomUIShow()V

    .line 288
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->setMode4UI()V

    :goto_0
    return-void
.end method

.method private setModeSelect(I)V
    .locals 2

    .line 246
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$y4oQXwhKV100SF8Jh7jhbzGl2k4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$y4oQXwhKV100SF8Jh7jhbzGl2k4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setMt03RemoteMode(F)V
    .locals 4

    .line 231
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 232
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "PV_RC_MODE"

    invoke-direct {v1, v2, v3, p1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    .line 233
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->context:Landroid/content/Context;

    sget v0, Lcom/powervision/gcs/R$string;->loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindRemoteModeView$0$RemoteLogicView(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    if-eqz p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCommonUIShow()V

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    const/high16 p1, 0x40800000    # 4.0f

    .line 100
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->setMt03RemoteMode(F)V

    return-void
.end method

.method public synthetic lambda$onBindRemoteModeView$1$RemoteLogicView(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    .line 104
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onCustomUIShow()V

    .line 105
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->reset()V

    return-void
.end method

.method public synthetic lambda$setModeSelect$2$RemoteLogicView(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 261
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->isSetRemoteRockerModeCommon:Z

    const/high16 p1, 0x40800000    # 4.0f

    .line 262
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 263
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v0

    new-instance v1, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "PV_RC_MODE"

    invoke-direct {v1, v2, v3, p1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onMode4Select()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onMode3Select()V

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onMode2Select()V

    goto :goto_0

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onMode1Select()V

    :goto_0
    return-void
.end method

.method public onBindRemoteModeView(Landroid/view/View;)V
    .locals 1

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->rl_remote_common_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_remote_common_setting:Landroid/widget/RelativeLayout;

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->tv_remote_common_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_common_setting:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/powervision/gcs/R$id;->rl_remote_custom_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_remote_custom_setting:Landroid/widget/RelativeLayout;

    .line 68
    sget v0, Lcom/powervision/gcs/R$id;->tv_remote_custom_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->tv_remote_custom_setting:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_common_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_common_view:Landroid/widget/RelativeLayout;

    .line 70
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_custom_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_rocker_custom_view:Landroid/widget/LinearLayout;

    .line 71
    sget v0, Lcom/powervision/gcs/R$id;->remote_switch_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/view/RemoteModelSwitchView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remote_switch_view:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    .line 73
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->setOnRemoteModelInterface(Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;)V

    .line 94
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_remote_common_setting:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$-DN79vsRPEkoCfb9bx1BruEhG_Y;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$-DN79vsRPEkoCfb9bx1BruEhG_Y;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->rl_remote_custom_setting:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$sqYcfhkqxVDwxziQrOL1-zKQi_I;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$sqYcfhkqxVDwxziQrOL1-zKQi_I;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->addRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V

    .line 110
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->getRemoteMode()V

    return-void
.end method

.method public unbindView()V
    .locals 2

    .line 114
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->remoteControlParamListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->removeRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V

    return-void
.end method
