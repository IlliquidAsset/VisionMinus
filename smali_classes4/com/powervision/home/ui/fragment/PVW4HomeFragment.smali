.class public Lcom/powervision/home/ui/fragment/PVW4HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "PVW4HomeFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PVW4HomeFragment"


# instance fields
.field isStartConnect:Z

.field private mBg:Landroid/widget/ImageView;

.field private mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCvLayout:Landroidx/cardview/widget/CardView;

.field private mIvCardTitle:Landroid/widget/ImageView;

.field private mIvCardTitleConnected:Landroid/widget/ImageView;

.field private mIvConnectAnim:Landroid/widget/ImageView;

.field private mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

.field private mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

.field private mTvConnectedStatus:Landroid/widget/TextView;

.field private mTvDisconnectStatus:Landroid/widget/TextView;

.field private statConnectAnim:Lcom/powervision/base/utils/FrameAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->isStartConnect:Z

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->statConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvConnectAnim:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Lcom/powervision/home/view/NeedCheckActiviteTextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    return-object p0
.end method

.method private initAnimListener(Z)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->statConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    new-instance v1, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;-><init>(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FrameAnimation;->setAnimationListener(Lcom/powervision/base/utils/FrameAnimation$AnimationListener;)V

    .line 132
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->statConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    invoke-virtual {p1}, Lcom/powervision/base/utils/FrameAnimation;->justPlay()V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvConnectAnim:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/home/R$array;->pvw4_connect_anim:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->statConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 137
    new-instance v0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$2;-><init>(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    .line 149
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->addActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 85
    sget v0, Lcom/powervision/home/R$id;->constraint_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    sget v0, Lcom/powervision/home/R$id;->cv_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    .line 87
    sget v0, Lcom/powervision/home/R$id;->bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mBg:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/powervision/home/R$id;->iv_connect_anim:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvConnectAnim:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/powervision/home/R$id;->tv_connected_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectedStatus:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/powervision/home/R$id;->tv_disconnect_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvDisconnectStatus:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/powervision/home/R$id;->iv_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitle:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/powervision/home/R$id;->iv_card_title_connected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitleConnected:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/powervision/home/R$id;->tv_connect_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/home/view/NeedCheckActiviteTextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    .line 94
    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_73:I

    invoke-virtual {p1, v0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setText(I)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/home/ui/fragment/PVW4HomeFragment;
    .locals 2

    .line 60
    new-instance v0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-direct {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private startAnim(Z)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/home/R$string;->AP03_Home_4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {v2, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setEnabled(Z)V

    .line 221
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvDisconnectStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitleConnected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectedStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/home/R$string;->AP03_ConnectGuide_73:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {v2, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setEnabled(Z)V

    .line 230
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitle:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvDisconnectStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mIvCardTitleConnected:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectedStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 236
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v7

    const/high16 v0, 0x41200000    # 10.0f

    .line 237
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v5

    const/high16 v0, 0x41a00000    # 20.0f

    .line 238
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    const/high16 v0, 0x41f00000    # 30.0f

    .line 239
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v6

    const/high16 v0, 0x42700000    # 60.0f

    .line 241
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v4

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-array p1, v0, [F

    .line 244
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 245
    :goto_1
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$PVW4HomeFragment$zPEhyaA6eqe9NDv0IfGPnHzZNlw;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/powervision/home/ui/fragment/-$$Lambda$PVW4HomeFragment$zPEhyaA6eqe9NDv0IfGPnHzZNlw;-><init>(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;IIIII)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x258

    .line 263
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBackgroundView(F)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateConnectAnim(I)V
    .locals 3

    .line 297
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 299
    sget v1, Lcom/powervision/home/R$id;->iv_connect_anim:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 301
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private updateConnectBtn(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateCvLayout(IIIIII)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 278
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 279
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 280
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 281
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 282
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    int-to-float p2, p5

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 284
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mCvLayout:Landroidx/cardview/widget/CardView;

    int-to-float p2, p6

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    return-void
.end method


# virtual methods
.method public connectDevice()V
    .locals 3

    .line 196
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->isStartConnect:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->isStartConnect:Z

    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/powervision/base/event/PVW4ConnectTestEvent;

    invoke-direct {v2, v0}, Lcom/powervision/base/event/PVW4ConnectTestEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->startAnim(Z)V

    .line 202
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initAnimListener(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Device_Connection"

    const-string v2, ""

    .line 205
    invoke-static {v1, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectDevice()V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->isStartConnect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->isStartConnect:Z

    .line 187
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/powervision/base/event/PVW4ConnectTestEvent;

    invoke-direct {v2, v0}, Lcom/powervision/base/event/PVW4ConnectTestEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->startAnim(Z)V

    .line 189
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initAnimListener(Z)V

    return-void
.end method

.method public synthetic lambda$startAnim$0$PVW4HomeFragment(IIIIILandroid/animation/ValueAnimator;)V
    .locals 8

    .line 247
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    int-to-float p1, p1

    mul-float v0, p1, p6

    float-to-int v4, v0

    int-to-float p2, p2

    mul-float p2, p2, p6

    float-to-int v3, p2

    int-to-float p2, p3

    mul-float p2, p2, p6

    float-to-int v5, p2

    int-to-float p2, p4

    mul-float p2, p2, p6

    float-to-int v6, p2

    int-to-float p2, p5

    mul-float p2, p2, p6

    float-to-int v7, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p6

    mul-float p1, p1, p2

    float-to-int p1, p1

    move-object v1, p0

    move v2, v4

    .line 258
    invoke-direct/range {v1 .. v7}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->updateCvLayout(IIIIII)V

    .line 259
    invoke-direct {p0, p6}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->updateBackgroundView(F)V

    .line 260
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->updateConnectAnim(I)V

    .line 261
    invoke-direct {p0, p6}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->updateConnectBtn(F)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 69
    sget p3, Lcom/powervision/home/R$layout;->home_fragment_pvw4:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initView(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initData()V

    .line 74
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initListener()V

    .line 75
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->connectDevice()V

    .line 78
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getStatus()I

    move-result p2

    if-nez p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mTvConnectBtn:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {p2, v0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->changeActiviteState(I)V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 154
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->removeActiviteListener(Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->mStateListener:Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;

    :cond_0
    return-void
.end method

.method public pvw4ConnectStatusEvent(Lcom/powervision/base/event/PVW4ConnectStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "lzqW4_body_"

    const-string v1, "w4fragment \u63a5\u6536EventBus"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget p1, p1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;->mConnectStatus:I

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->disconnectDevice()V

    goto :goto_0

    :cond_0
    const-string p1, "w4fragment onDeviceConnected"

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->connectDevice()V

    :goto_0
    return-void
.end method
