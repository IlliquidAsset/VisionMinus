.class public Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ConnectRemotePairActivity.java"


# static fields
.field public static final REQUEST_SCAN:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ConnectRemotePairActivi"


# instance fields
.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field etPsn:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd14
    .end annotation
.end field

.field ivClear:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdf6
    .end annotation
.end field

.field ivScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe1c
    .end annotation
.end field

.field progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf26
    .end annotation
.end field

.field rl_finish:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf77
    .end annotation
.end field

.field tvFinish:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1178
    .end annotation
.end field

.field tvPsnIndicator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1193
    .end annotation
.end field

.field videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11e2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    .line 212
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->showPairedSucceedFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->showProgressBar()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->rl_finish:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$qF8VmdZX0JPSlqa_uCaQf_OZMlk;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$qF8VmdZX0JPSlqa_uCaQf_OZMlk;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivScan:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$lKEgzqKCH7x2G7EdAV4ptyas29g;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$lKEgzqKCH7x2G7EdAV4ptyas29g;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivClear:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$UDMYvTWyiLmI2NZNFFW5_NMhm7g;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$UDMYvTWyiLmI2NZNFFW5_NMhm7g;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initVideoPlayer()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    .line 162
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_body_scan:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 166
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$drawable;->video_white_background:I

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 168
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 169
    invoke-virtual {v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    return-void
.end method

.method private showPairedSucceedFragment()V
    .locals 3

    const/4 v0, 0x1

    .line 273
    invoke-static {v0}, Lcom/powervision/gcs/update/PairedDialogFragment;->newInstance(I)Lcom/powervision/gcs/update/PairedDialogFragment;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PairedDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/update/PairedDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;Lcom/powervision/gcs/update/PairedDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/PairedDialogFragment;->setOnClickListener(Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;)V

    return-void
.end method

.method private showProgressBar()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$dgHLfgRrFFwUr14_zs_BbjRU5H8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$dgHLfgRrFFwUr14_zs_BbjRU5H8;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPair()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/powervision/gcs/utils/PsnUtils;->isW4Psn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    sget v1, Lcom/powervision/gcs/R$color;->red_text_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvPsnIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvPsnIndicator:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    sget v2, Lcom/powervision/gcs/R$color;->title_text_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDO_VEH_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectRemotePairActivi"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->setSSID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deviceStatus(Lcom/powervision/base/event/PVW4ConnectStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 290
    iget p1, p1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;->mConnectStatus:I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->finish()V

    .line 294
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/event/CloseBottomConnectEvent;

    invoke-direct {v0}, Lcom/powervision/gcs/event/CloseBottomConnectEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 73
    sget v0, Lcom/powervision/gcs/R$layout;->activity_connect_remote_pair:I

    return v0
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 79
    sget p1, Lcom/powervision/gcs/R$string;->ConnectGuide_5:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->setHomeTitle(I)V

    .line 80
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1}, Landroidx/core/widget/ContentLoadingProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->initVideoPlayer()V

    .line 84
    sget p1, Lcom/powervision/gcs/R$mipmap;->icon_close:I

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$kW7vSHjsTSni38O3mEW95DDkKyc;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ConnectRemotePairActivity$kW7vSHjsTSni38O3mEW95DDkKyc;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->setSubTitleImage(ILandroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->initListener()V

    return-void
.end method

.method public synthetic lambda$initListener$1$ConnectRemotePairActivity(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1}, Landroidx/core/widget/ContentLoadingProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->startPair()V

    goto :goto_0

    .line 105
    :cond_1
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_126:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initListener$2$ConnectRemotePairActivity(Landroid/view/View;)V
    .locals 1

    .line 110
    const-class p1, Lcom/powervision/gcs/ui/aty/ship/ConnectScanActivity;

    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->startActivityForResult(Ljava/lang/Class;I)V

    return-void
.end method

.method public synthetic lambda$initListener$3$ConnectRemotePairActivity(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvPsnIndicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    sget v0, Lcom/powervision/gcs/R$color;->title_text_color:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initViews$0$ConnectRemotePairActivity(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->finish()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/event/CloseBottomConnectEvent;

    invoke-direct {v0}, Lcom/powervision/gcs/event/CloseBottomConnectEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$showProgressBar$4$ConnectRemotePairActivity()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 176
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

    .line 183
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 185
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->startPair()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onResume()V

    .line 142
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->onActivityResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onStop()V

    .line 149
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->setRemotePair(Ljava/lang/String;)V

    .line 203
    invoke-static {p0}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :cond_0
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_25:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :goto_0
    return-void
.end method
