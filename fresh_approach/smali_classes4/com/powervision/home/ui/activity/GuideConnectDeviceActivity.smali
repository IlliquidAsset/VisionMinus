.class public Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideConnectDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# instance fields
.field private controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private mBackBt:Landroid/widget/ImageView;

.field private mHelpTv:Landroid/widget/TextView;

.field private mIntoFlyControl:Landroid/widget/TextView;

.field private mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 141
    new-instance v0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;-><init>(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->onRemoteControlerDisConnect()V

    return-void
.end method

.method private initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 99
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    const/16 v0, 0xde

    .line 100
    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x1

    .line 102
    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 104
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    sget v0, Lcom/powervision/home/R$drawable;->home_video_white_background:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 105
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 106
    iget-object p2, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    const-wide/16 v0, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method

.method private onRemoteControlerDisConnect()V
    .locals 1

    .line 175
    new-instance v0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$3;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$3;-><init>(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 45
    sget v0, Lcom/powervision/home/R$layout;->home_activity_guide_aircraft_connect_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    sget p1, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mBackBt:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/powervision/home/R$id;->aircraft_guide_into_control:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mIntoFlyControl:Landroid/widget/TextView;

    .line 52
    sget p1, Lcom/powervision/home/R$id;->guide_help_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mHelpTv:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/powervision/home/R$id;->connect_deivce_video_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 55
    sget v0, Lcom/powervision/home/R$raw;->home_guide_flight_mode_connect:I

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getRawVideoPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 84
    sget v0, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    if-ne p1, v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->aircraft_guide_into_control:I

    if-ne p1, v0, :cond_3

    .line 87
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_2

    .line 88
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/aircraft/AircraftSelfCheckActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getAircraftActivity()Landroid/app/Activity;

    goto :goto_0

    .line 92
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->guide_help_tv:I

    if-ne p1, v0, :cond_4

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mVideoView:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    .line 73
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 74
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 75
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 1

    .line 126
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 130
    new-instance p1, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;

    invoke-direct {p1, p0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;-><init>(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    .line 113
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->onActivityResume()V

    .line 114
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    .line 120
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 61
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mIntoFlyControl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->mHelpTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 65
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method
