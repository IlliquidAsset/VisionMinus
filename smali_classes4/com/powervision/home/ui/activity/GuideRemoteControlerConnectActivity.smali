.class public Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideRemoteControlerConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private mIntoControl:Landroid/widget/TextView;

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mTopTitle:Landroid/widget/TextView;

.field private mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field private mbackBt:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->onConnectRemoteControler()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->showOrHideProgressBar(Z)V

    return-void
.end method

.method private checkRemoteControlerConnectStatus()V
    .locals 2

    .line 73
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 74
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private initContentViews()V
    .locals 2

    .line 82
    sget v0, Lcom/powervision/home/R$id;->loading_bar:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 83
    sget v0, Lcom/powervision/home/R$id;->layout_video_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 84
    sget v1, Lcom/powervision/home/R$raw;->home_guide_open_remote_controler:I

    invoke-static {v1}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUsbMounted()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->showOrHideProgressBar(Z)V

    return-void
.end method

.method private initTopBar()V
    .locals 1

    .line 57
    sget v0, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mbackBt:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/powervision/home/R$id;->aircraft_guide_top_tilte:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mTopTitle:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/powervision/home/R$id;->aircraft_guide_into_control:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mIntoControl:Landroid/widget/TextView;

    return-void
.end method

.method private initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 90
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    const/16 v0, 0xde

    .line 91
    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x1

    .line 93
    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 95
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    sget v0, Lcom/powervision/home/R$drawable;->home_video_white_background:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 96
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 97
    iget-object p2, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    const-wide/16 v0, 0x0

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method

.method private onConnectRemoteControler()V
    .locals 2

    .line 191
    const-class v0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->finish()V

    :cond_0
    return-void
.end method

.method private showOrHideProgressBar(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 174
    iget-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    sget v0, Lcom/powervision/home/R$layout;->home_activity_guide_remote_controler_connect_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->initTopBar()V

    .line 53
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->initContentViews()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->setAoaConnectTime(J)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideMainModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 107
    sget v0, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    if-ne v0, p1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->onBackPressed()V

    goto :goto_0

    .line 109
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->aircraft_guide_into_control:I

    if-ne v0, p1, :cond_3

    .line 110
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_2

    .line 111
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/aircraft/AircraftSelfCheckActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getAircraftActivity()Landroid/app/Activity;

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    .line 134
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 135
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 125
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 126
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->setAoaConnectTime(J)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 66
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mIntoControl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->mbackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 69
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->checkRemoteControlerConnectStatus()V

    return-void
.end method
