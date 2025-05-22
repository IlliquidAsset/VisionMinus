.class public Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AircraftConnectedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/sdk/callback/Ap03RoboticArmListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/home/presenter/impl/HomePresenter;",
        "Lcom/powervision/home/model/impl/HomeModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/sdk/callback/Ap03RoboticArmListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;"
    }
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

.field private commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field isActivityPaused:Z

.field private isOutAnimation:Z

.field private mAircraftIcon:Landroid/widget/ImageView;

.field private mBackBt:Landroid/widget/ImageView;

.field private mBackGroundBt:Landroid/widget/ImageView;

.field private mIntoBt:Landroid/widget/TextView;

.field private mTopSupportBt:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, "AircraftConnectedFragment"

    .line 43
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isActivityPaused:Z

    .line 51
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isOutAnimation:Z

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isOutAnimation:Z

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->startOutAlpha()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->startInAlpha()V

    return-void
.end method

.method private executeFramAnimation()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment$1;-><init>(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method static synthetic lambda$showSupportPopWindow$2(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 264
    sget v0, Lcom/powervision/home/R$id;->flight_record_layout:I

    if-ne p1, v0, :cond_0

    .line 265
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$FlightLog;->getFlightLogActivity()Landroid/app/Activity;

    goto :goto_0

    .line 266
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    const-string v1, "/aircraft/AirCraftControlActivity"

    if-ne p1, v0, :cond_1

    .line 267
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    if-ne p1, v0, :cond_2

    .line 269
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getFindActivity()Landroid/app/Activity;

    goto :goto_0

    .line 270
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->tv_intoDV:I

    if-ne p1, v0, :cond_3

    .line 271
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->tv_intoAir:I

    if-ne p1, v0, :cond_4

    .line 273
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 275
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private showSupportPopWindow(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 247
    sget v1, Lcom/powervision/home/R$layout;->home_menu_add_pop_up:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    sget v1, Lcom/powervision/home/R$id;->flight_record_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 249
    sget v2, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 250
    sget v3, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 251
    sget v4, Lcom/powervision/home/R$id;->tv_intoDV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 252
    sget v5, Lcom/powervision/home/R$id;->tv_intoAir:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 257
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 259
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 260
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 262
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$bzOH0SvFX0Wtc4zJ0WNOkKk15Yg;

    invoke-direct {v0, v6}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$bzOH0SvFX0Wtc4zJ0WNOkKk15Yg;-><init>(Landroid/widget/PopupWindow;)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 284
    invoke-virtual {v6, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private startInAlpha()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 140
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$rFwV07RTvsxl5LxaAEboxAjWzS8;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$rFwV07RTvsxl5LxaAEboxAjWzS8;-><init>(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

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

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 130
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$tB1y0sRZcl_Mjo8DJxDmmLQmJWE;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$tB1y0sRZcl_Mjo8DJxDmmLQmJWE;-><init>(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRoboticChange(ZZZ)V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isActivityPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;-><init>(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 69
    sget v0, Lcom/powervision/home/R$layout;->home_activity_aircraft_connected_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 75
    sget p1, Lcom/powervision/home/R$id;->conn_aircraft_device_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mAircraftIcon:Landroid/widget/ImageView;

    .line 76
    sget p1, Lcom/powervision/home/R$id;->conn_home_into_device:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    .line 77
    sget p1, Lcom/powervision/home/R$id;->back_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    .line 78
    sget p1, Lcom/powervision/home/R$id;->home_top_support_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mTopSupportBt:Landroid/widget/ImageView;

    .line 80
    sget p1, Lcom/powervision/home/R$id;->background_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    .line 81
    new-instance p1, Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    .line 82
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p0, v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->init_Fragemnt(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$startInAlpha$1$AircraftConnectedFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startOutAlpha$0$AircraftConnectedFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 134
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$updateRoboticChange$3$AircraftConnectedFragment(ZZZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->onDeviceDisconnectStatus()V

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRoboticArmStateChange() isLeftLoad="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isRightLoad="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AircraftConnectedFragment"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public lockDevice()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf7
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.2 lockDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 344
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->startDownLoadApp()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 172
    sget v1, Lcom/powervision/home/R$id;->conn_home_into_device:I

    if-ne v0, v1, :cond_4

    .line 173
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    const-class v1, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "unlock"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_1

    .line 191
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/aircraft/AirCraftControlActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    const-class v1, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    sget p1, Lcom/powervision/home/R$string;->AP03_Upgrade_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock_app"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 199
    sget p1, Lcom/powervision/home/R$string;->APP_Msg_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_4
    sget v1, Lcom/powervision/home/R$id;->back_bt:I

    if-ne v0, v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 237
    :cond_5
    sget v1, Lcom/powervision/home/R$id;->home_top_support_icon:I

    if-ne v0, v1, :cond_6

    .line 238
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->showSupportPopWindow(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 351
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 352
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->onDestroy()V

    .line 354
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->onDeviceDisconnectStatus()V

    :cond_0
    return-void
.end method

.method public onDeviceDisconnectStatus()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 289
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isActivityPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->isActivityPaused:Z

    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 0

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->updateRoboticChange(ZZZ)V

    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 297
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStart()V

    const-string v0, "lzqDD"

    const-string v1, "AirCraftConneted onStart"

    .line 298
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    .line 300
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->init(Landroid/app/Activity;)V

    .line 301
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->startInAlpha()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 306
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStop()V

    .line 307
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->unInit()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mTopSupportBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 166
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method public unlockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf8
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$drawable;->home_selector_had_con_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method
