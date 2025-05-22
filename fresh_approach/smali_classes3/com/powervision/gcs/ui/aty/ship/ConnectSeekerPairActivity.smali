.class public Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ConnectSeekerPairActivity.java"


# static fields
.field public static final REQUEST_SCAN:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ConnectSeekerPair"


# instance fields
.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field etPsn:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd14
    .end annotation
.end field

.field ivScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe1c
    .end annotation
.end field

.field tvFinish:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1178
    .end annotation
.end field

.field videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11e2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01AirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->tvFinish:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$cymVahBpCNS9_axSd5QtrSaN62g;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$cymVahBpCNS9_axSd5QtrSaN62g;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->ivScan:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$Mhy-irJ_-xdwBA3UmM0GB3-pTnk;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$Mhy-irJ_-xdwBA3UmM0GB3-pTnk;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initVideoPlayer()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_body_scan:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 143
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$drawable;->video_white_background:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 145
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 146
    invoke-virtual {v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    return-void
.end method

.method static synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private seekerPair(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget p1, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    if-nez v0, :cond_1

    .line 175
    sget p1, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 180
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_87:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 184
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    const-string v0, "200CAAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    return-void

    .line 185
    :cond_4
    :goto_0
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_87:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 51
    sget v0, Lcom/powervision/gcs/R$layout;->activity_connect_seeker_pair:I

    return v0
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_65:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->setHomeTitle(I)V

    .line 59
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->initVideoPlayer()V

    .line 60
    sget p1, Lcom/powervision/gcs/R$mipmap;->icon_close:I

    sget-object v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$kGF0zNCpTJaYKQBVNAIicnSu1Dc;->INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectSeekerPairActivity$kGF0zNCpTJaYKQBVNAIicnSu1Dc;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->setSubTitleImage(ILandroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->initListener()V

    return-void
.end method

.method public synthetic lambda$initListener$1$ConnectSeekerPairActivity(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->etPsn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->seekerPair(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initListener$2$ConnectSeekerPairActivity(Landroid/view/View;)V
    .locals 1

    .line 111
    const-class p1, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;

    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->startActivityForResult(Ljava/lang/Class;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x65

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "code"

    .line 160
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 162
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->etPsn:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onResume()V

    .line 119
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->onActivityResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStop()V

    .line 126
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    return-void
.end method
