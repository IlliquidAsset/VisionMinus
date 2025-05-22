.class public Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideFlyModeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;
.implements Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;


# instance fields
.field isOpen:Z

.field private mAircraftMode:I

.field private mBackBt:Landroid/widget/ImageView;

.field private mLandingIntoDeviceBt:Landroid/widget/TextView;

.field private mLandingWaterIv:Landroid/widget/ImageView;

.field private mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mNormalIntoDeviceBt:Landroid/widget/TextView;

.field private mNormalIv:Landroid/widget/ImageView;

.field private mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mWaterproofIntoDeviceBt:Landroid/widget/TextView;

.field private mWaterproofIv:Landroid/widget/ImageView;

.field private mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    return-void
.end method

.method private initFlyMode()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->isLandingWaterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->isWaterproofMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    .line 103
    :cond_1
    :goto_0
    iget v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChange(I)V

    return-void
.end method

.method private initModeViews()V
    .locals 2

    .line 57
    sget v0, Lcom/powervision/home/R$id;->normal_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    sget v0, Lcom/powervision/home/R$id;->waterproof_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    sget v0, Lcom/powervision/home/R$id;->landing_water_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    sget v0, Lcom/powervision/home/R$id;->normal_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/powervision/home/R$id;->waterproof_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/powervision/home/R$id;->landing_water_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/powervision/home/R$id;->normal_into_device:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIntoDeviceBt:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/powervision/home/R$id;->waterproof_into_device:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIntoDeviceBt:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/powervision/home/R$id;->landing_water_into_device:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingIntoDeviceBt:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$mipmap;->home_normal_mode_aircraft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 71
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$mipmap;->home_waterproof_mode_aircraft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$mipmap;->home_landing_water_mode_aircraft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method private intoDevice()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/aircraft/AircraftSelfCheckActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    iget v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    const-string v2, "waterMode"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/aircraft/AirCraftControlActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->finish()V

    return-void
.end method

.method private onModeChangeViews(I)V
    .locals 1

    .line 280
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideFlyModeSelectActivity$uXYseOOPnr42LDpD3PZLmCTTeag;

    invoke-direct {v0, p0, p1}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideFlyModeSelectActivity$uXYseOOPnr42LDpD3PZLmCTTeag;-><init>(Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setViewZoomIn(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 233
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 234
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 236
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 237
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x12c

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 242
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f90a3d7    # 1.13f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa147ae    # 1.26f
    .end array-data
.end method

.method private setViewZoomOut(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 246
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 247
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 249
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x12c

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 255
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f90a3d7    # 1.13f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa147ae    # 1.26f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showHideIntoView()V
    .locals 4

    .line 217
    iget v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 218
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 222
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 46
    sget v0, Lcom/powervision/home/R$layout;->home_activity_guide_aircraft_mode_select_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    sget p1, Lcom/powervision/home/R$id;->gudie_mode_top_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mBackBt:Landroid/widget/ImageView;

    .line 52
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->initModeViews()V

    return-void
.end method

.method public synthetic lambda$onModeChangeViews$0$GuideFlyModeSelectActivity(I)V
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChange(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 127
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 131
    sget v0, Lcom/powervision/home/R$id;->gudie_mode_top_back_iv:I

    if-ne p1, v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->finish()V

    goto :goto_0

    .line 133
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->normal_mode_layout:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 135
    iget p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    .line 136
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    .line 137
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->setRainproofMode(I)I

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_8

    .line 139
    iput-boolean v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    .line 140
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->setWaterproofCaseStatus(I)I

    goto :goto_0

    .line 142
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->waterproof_mode_layout:I

    if-ne p1, v0, :cond_4

    .line 143
    iget p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    if-eq p1, v2, :cond_8

    .line 144
    iput-boolean v2, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    .line 145
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setRainproofMode(I)I

    goto :goto_0

    .line 147
    :cond_4
    sget v0, Lcom/powervision/home/R$id;->landing_water_mode_layout:I

    if-ne p1, v0, :cond_5

    .line 148
    iget p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    if-eq p1, v1, :cond_8

    .line 149
    iput-boolean v2, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    .line 150
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setWaterproofCaseStatus(I)I

    goto :goto_0

    .line 152
    :cond_5
    sget v0, Lcom/powervision/home/R$id;->normal_into_device:I

    if-ne p1, v0, :cond_6

    .line 153
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->intoDevice()V

    goto :goto_0

    .line 154
    :cond_6
    sget v0, Lcom/powervision/home/R$id;->waterproof_into_device:I

    if-ne p1, v0, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->intoDevice()V

    goto :goto_0

    .line 156
    :cond_7
    sget v0, Lcom/powervision/home/R$id;->landing_water_into_device:I

    if-ne p1, v0, :cond_8

    .line 157
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->intoDevice()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 108
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 109
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 110
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 120
    :cond_2
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 261
    new-instance p1, Lcom/powervision/home/ui/activity/-$$Lambda$91iA_hvzBQcLraX92-vJIEz-4QA;

    invoke-direct {p1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$91iA_hvzBQcLraX92-vJIEz-4QA;-><init>(Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onModeChange(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 173
    iget v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    if-nez v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_check_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_2
    if-ne p1, v0, :cond_5

    .line 186
    iget v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 191
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 195
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_check_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    goto :goto_3

    .line 199
    :cond_5
    iget v2, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    if-ne v2, v1, :cond_6

    .line 200
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    if-ne v2, v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_uncheck_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomOut(Landroid/view/View;)V

    .line 208
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$mipmap;->home_mode_check_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->setViewZoomIn(Landroid/view/View;)V

    .line 212
    :goto_3
    iput p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    .line 213
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->showHideIntoView()V

    return-void
.end method

.method public rainproofModeReslut(I)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11111111111  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current mode =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_select"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 288
    iget-boolean p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 289
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChangeViews(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChangeViews(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 80
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingIntoDeviceBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mNormalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mWaterproofLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mLandingWaterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 91
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 92
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V

    .line 94
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->initFlyMode()V

    return-void
.end method

.method public waterProofcaseStatusResult(I)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2222222222  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current mode =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->mAircraftMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_select"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 270
    iget-boolean p1, p0, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->isOpen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 271
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChangeViews(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;->onModeChangeViews(I)V

    :cond_1
    :goto_0
    return-void
.end method
