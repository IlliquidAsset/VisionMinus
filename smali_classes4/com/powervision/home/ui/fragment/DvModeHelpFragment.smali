.class public Lcom/powervision/home/ui/fragment/DvModeHelpFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "DvModeHelpFragment.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private imageBgs:[Landroid/widget/ImageView;

.field private images:[Landroid/widget/ImageView;

.field private mImageOpen:Landroid/widget/ImageView;

.field private mImageOpenBg:Landroid/widget/ImageView;

.field private mImageWifi:Landroid/widget/ImageView;

.field private mImageWifiBg:Landroid/widget/ImageView;

.field private mTextScan:Landroid/widget/TextView;

.field private mVideoOpen:Landroid/widget/VideoView;

.field private mVideoWifi:Landroid/widget/VideoView;

.field private resIds:[I

.field private videoViews:[Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/VideoView;

    .line 31
    iput-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    new-array v1, v0, [I

    .line 32
    sget v2, Lcom/powervision/home/R$raw;->home_guide_help_open:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/powervision/home/R$raw;->home_guide_help_wifi:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->resIds:[I

    new-array v1, v0, [Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->imageBgs:[Landroid/widget/ImageView;

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->images:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)[Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->images:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)[Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->imageBgs:[Landroid/widget/ImageView;

    return-object p0
.end method

.method private initVideoPath(Landroid/widget/VideoView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->resIds:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 139
    new-instance v0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;-><init>(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;Landroid/widget/VideoView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-static {p0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method static synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 38
    sget v0, Lcom/powervision/home/R$layout;->home_dv_main_help_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 4

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 125
    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->initVideoPath(Landroid/widget/VideoView;I)V

    .line 126
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->resIds:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const-wide/16 v2, 0x2

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/RequestBuilder;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const v2, 0x3dcccccd    # 0.1f

    .line 128
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->imageBgs:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    .line 129
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 55
    sget p1, Lcom/powervision/home/R$id;->text_scan:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mTextScan:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/powervision/home/R$id;->image_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 58
    sget-object v0, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$W1ABgPu4VubUfhyL27voXXouLjk;->INSTANCE:Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$W1ABgPu4VubUfhyL27voXXouLjk;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lcom/powervision/home/R$id;->text_camera:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    sget-object v0, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$fooJeRIemfofhG91Wx3r2lzPahY;->INSTANCE:Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$fooJeRIemfofhG91Wx3r2lzPahY;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p1, Lcom/powervision/home/R$id;->text:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 68
    sget p1, Lcom/powervision/home/R$id;->image_open:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpen:Landroid/widget/ImageView;

    .line 69
    sget p1, Lcom/powervision/home/R$id;->image_wifi:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifi:Landroid/widget/ImageView;

    .line 72
    sget p1, Lcom/powervision/home/R$id;->image_open_bg:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpenBg:Landroid/widget/ImageView;

    .line 73
    sget p1, Lcom/powervision/home/R$id;->image_wifi_bg:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifiBg:Landroid/widget/ImageView;

    .line 77
    sget p1, Lcom/powervision/home/R$id;->video_open:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mVideoOpen:Landroid/widget/VideoView;

    .line 78
    sget p1, Lcom/powervision/home/R$id;->video_wifi:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mVideoWifi:Landroid/widget/VideoView;

    .line 81
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mVideoOpen:Landroid/widget/VideoView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 82
    aput-object p1, v1, v0

    .line 85
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->images:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpen:Landroid/widget/ImageView;

    aput-object v1, p1, v3

    .line 86
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifi:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    .line 89
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->imageBgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpenBg:Landroid/widget/ImageView;

    aput-object v1, p1, v3

    .line 90
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifiBg:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    return-void
.end method

.method public synthetic lambda$setListener$2$DvModeHelpFragment(Landroid/view/View;)V
    .locals 3

    .line 98
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->resIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 99
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 100
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpen:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpenBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setListener$3$DvModeHelpFragment(Landroid/view/View;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->resIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 105
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 106
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifi:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifiBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setListener$4$DvModeHelpFragment(Landroid/view/View;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_34:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x3e9

    .line 116
    invoke-static {p0, v0, p1, v1}, Lcom/powervision/home/ui/activity/QrCaptureActivity;->startConnectScanActivity(Landroidx/fragment/app/Fragment;ILjava/lang/String;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    .line 161
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "qr_result_code"

    .line 162
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ssid"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mTextScan:Landroid/widget/TextView;

    invoke-static {p2}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p2

    sget p3, Lcom/powervision/home/R$id;->action_2_main:I

    invoke-virtual {p2, p3, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 187
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 179
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 171
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->videoViews:[Landroid/widget/VideoView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 97
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageOpen:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$gHJP-iwOdpz6knMlQgXhH0qtulY;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$gHJP-iwOdpz6knMlQgXhH0qtulY;-><init>(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mImageWifi:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$uMirsScjNgL4sln-8wvaPv6kev0;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$uMirsScjNgL4sln-8wvaPv6kev0;-><init>(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->mTextScan:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$MW6CB4NMDWcjeBhHcZoj-6cuctI;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$DvModeHelpFragment$MW6CB4NMDWcjeBhHcZoj-6cuctI;-><init>(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
