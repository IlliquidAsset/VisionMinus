.class public Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PVW4ConnectedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipConnectedActivity"


# instance fields
.field activiteStatusListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

.field connectStuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

.field private isOutAnimation:Z

.field private mBg:Landroid/widget/FrameLayout;

.field private mCvLayout:Landroidx/cardview/widget/CardView;

.field private mIvBack:Landroid/widget/ImageView;

.field private mIvConnectAnim:Landroid/widget/ImageView;

.field private mIvConnectStatus:Landroid/widget/ImageView;

.field private mLlConnectStatus:Landroid/widget/LinearLayout;

.field private mTvCardTitle:Landroid/widget/TextView;

.field private mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

.field private mTvConnectStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->isOutAnimation:Z

    .line 140
    new-instance v0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->connectStuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    .line 228
    new-instance v0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->activiteStatusListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Lcom/powervision/home/view/NeedCheckActiviteTextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->isOutAnimation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->startOutAlpha()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->startInAlpha()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mBg:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private addListener()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method private checkDolphinBodyVersion()V
    .locals 0

    return-void
.end method

.method private deviceConnected()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectStatus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->AP03_Home_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectStatus:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$color;->black:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mBg:Landroid/widget/FrameLayout;

    sget v1, Lcom/powervision/home/R$mipmap;->w4_ship_connect_bg:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private deviceDisconnected()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectStatus:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->AP03_Home_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectStatus:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$color;->black:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 467
    sget v0, Lcom/powervision/home/R$id;->bg:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mBg:Landroid/widget/FrameLayout;

    .line 468
    sget v0, Lcom/powervision/home/R$id;->iv_card_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvCardTitle:Landroid/widget/TextView;

    .line 469
    sget v0, Lcom/powervision/home/R$id;->iv_connect_status:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectStatus:Landroid/widget/ImageView;

    .line 470
    sget v0, Lcom/powervision/home/R$id;->tv_connect_status:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectStatus:Landroid/widget/TextView;

    .line 471
    sget v0, Lcom/powervision/home/R$id;->ll_connect_status:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mLlConnectStatus:Landroid/widget/LinearLayout;

    .line 472
    sget v0, Lcom/powervision/home/R$id;->tv_connect_btn:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    .line 473
    sget v0, Lcom/powervision/home/R$id;->iv_connect_anim:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectAnim:Landroid/widget/ImageView;

    .line 474
    sget v0, Lcom/powervision/home/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvBack:Landroid/widget/ImageView;

    .line 475
    sget v0, Lcom/powervision/home/R$id;->cv_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mCvLayout:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method private showUpgrade()V
    .locals 0

    return-void
.end method

.method private startInAlpha()V
    .locals 3

    const-string v0, "lzqsc"

    const-string v1, "startInAlpha \u5168\u900f\u660e"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 351
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    new-instance v1, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$6;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$6;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 364
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 365
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startOutAlpha()V
    .locals 3

    const-string v0, "lzqsc"

    const-string v1, "startOutAlpha \u4e0d\u900f\u660e"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 371
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    new-instance v1, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$7;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$7;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->isOutAnimation:Z

    .line 390
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "ShipConnectedActivity"

    const-string v0, "onConfigurationChanged: "

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v0, Lcom/powervision/home/R$layout;->activity_pvw4_connected:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->initView()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkActivity onCreate:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCheckError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->finish()V

    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->connectStuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectedStuffListeners(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V

    .line 96
    new-instance p1, Landroid/transition/ChangeBounds;

    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v2, 0x12c

    .line 97
    invoke-virtual {p1, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 98
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 99
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->addListener()V

    .line 100
    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkMode(Landroid/app/Activity;)V

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const-string p1, "ShipConnectedActivity"

    const-string v0, "onCreate: checkDolphinBodyVersion"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "checkActivity onCreate:  end "

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float v0, p1

    const v1, 0x4418c000    # 611.0f

    mul-float v0, v0, v1

    const v1, 0x443b8000    # 750.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 122
    iget-object v1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 123
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvConnectAnim:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->mIvBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$2;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->activiteStatusListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->addActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V

    .line 135
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askTheAcitiviteStatus(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 395
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 396
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->activiteStatusListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->removeActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V

    .line 397
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->connectStuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeConnectedStuffListener(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V

    .line 398
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 289
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "lzqCheckError"

    const-string v1, "shipac  onResume"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "lzqCheckError"

    const-string v1, "shipac  onStart"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pvw4ConnectStatusEvent(Lcom/powervision/base/event/PVW4ConnectStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 250
    iget p1, p1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;->mConnectStatus:I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->deviceDisconnected()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->deviceConnected()V

    :goto_0
    return-void
.end method

.method public showW4UpgradeDialog(Z)V
    .locals 0

    return-void
.end method
