.class public Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AircraftDVConnectedFragment.java"

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


# static fields
.field private static final TAG:Ljava/lang/String; = "AircraftDVConnectedFrag"


# instance fields
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

    .line 38
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isActivityPaused:Z

    .line 47
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isOutAnimation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isOutAnimation:Z

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->startOutAlpha()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->startInAlpha()V

    return-void
.end method

.method private executeFramAnimation()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;-><init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method static synthetic lambda$showSupportPopWindow$0(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 143
    sget v0, Lcom/powervision/home/R$id;->flight_record_layout:I

    if-ne p1, v0, :cond_0

    .line 144
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$FlightLog;->getFlightLogActivity()Landroid/app/Activity;

    goto :goto_0

    .line 145
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    const-string v1, "/aircraft/AirCraftControlActivity"

    if-ne p1, v0, :cond_1

    .line 146
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    if-ne p1, v0, :cond_2

    .line 148
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getFindActivity()Landroid/app/Activity;

    goto :goto_0

    .line 149
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->tv_intoDV:I

    if-ne p1, v0, :cond_3

    .line 150
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->tv_intoAir:I

    if-ne p1, v0, :cond_4

    .line 152
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 154
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private showSupportPopWindow(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    sget v1, Lcom/powervision/home/R$layout;->home_menu_add_pop_up:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lcom/powervision/home/R$id;->flight_record_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    sget v2, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    sget v3, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    sget v4, Lcom/powervision/home/R$id;->tv_intoDV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    sget v5, Lcom/powervision/home/R$id;->tv_intoAir:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 136
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 139
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 141
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$hRewmknNp3Clu3WZ2SF4SjB88eM;

    invoke-direct {v0, v6}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$hRewmknNp3Clu3WZ2SF4SjB88eM;-><init>(Landroid/widget/PopupWindow;)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 163
    invoke-virtual {v6, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private startInAlpha()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 263
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 265
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$kGcVGQkQ5hOHtjEkpcVXotGo_dQ;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$kGcVGQkQ5hOHtjEkpcVXotGo_dQ;-><init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
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

    .line 253
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$DSl0z5_DsVAPR31mipMlGFCdiDA;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$DSl0z5_DsVAPR31mipMlGFCdiDA;-><init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
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

    .line 289
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isActivityPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;-><init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;ZZZ)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 84
    sget v0, Lcom/powervision/home/R$layout;->home_activity_dv_connected_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    const-string p1, "AircraftDVConnectedFrag"

    const-string v0, "initView: "

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget p1, Lcom/powervision/home/R$id;->conn_aircraft_device_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mAircraftIcon:Landroid/widget/ImageView;

    .line 92
    sget p1, Lcom/powervision/home/R$id;->conn_home_into_device:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    .line 93
    sget p1, Lcom/powervision/home/R$id;->back_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    .line 94
    sget p1, Lcom/powervision/home/R$id;->background_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    .line 95
    sget p1, Lcom/powervision/home/R$id;->home_top_support_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mTopSupportBt:Landroid/widget/ImageView;

    .line 99
    new-instance p1, Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    .line 100
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p0, v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->init_Fragemnt(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$startInAlpha$2$AircraftDVConnectedFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startOutAlpha$1$AircraftDVConnectedFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 257
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackGroundBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$updateRoboticChange$3$AircraftDVConnectedFragment(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->onDeviceDisconnectStatus()V

    .line 296
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

    const-string p2, "AircraftDVConnectedFrag"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public lockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf7
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 336
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

    .line 337
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$mipmap;->home_selector_had_con_unclick:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x462

    if-ne p1, p2, :cond_0

    const-string p1, "lzqFirm"

    const-string p2, "\u8bbe\u7f6e\u4e86\u5b89\u88c5\u672a\u77e5\u5e94\u7528\u540e\u7684\u56de\u8c03\u3002\u3002\u3002"

    .line 305
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->startDownLoadApp()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onAttach.."

    .line 106
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 54
    sget v1, Lcom/powervision/home/R$id;->conn_home_into_device:I

    if-ne v0, v1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "unlock"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    sget p1, Lcom/powervision/home/R$string;->AP03_Upgrade_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock_app"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 67
    sget p1, Lcom/powervision/home/R$string;->APP_Msg_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    sget v1, Lcom/powervision/home/R$id;->back_bt:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 77
    :cond_4
    sget v1, Lcom/powervision/home/R$id;->home_top_support_icon:I

    if-ne v0, v1, :cond_5

    .line 78
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->showSupportPopWindow(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 314
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 315
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 316
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onDetach: "

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->onDeviceDisconnectStatus()V

    :cond_0
    return-void
.end method

.method public onDeviceDisconnectStatus()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onPause: "

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isActivityPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onResume: "

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->isActivityPaused:Z

    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->updateRoboticChange(ZZZ)V

    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStart()V

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onStart: "

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    const-string v0, "lzqBattery"

    const-string v1, "AircraftActivity init"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->init(Landroid/app/Activity;)V

    .line 192
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->startInAlpha()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStop()V

    const-string v0, "AircraftDVConnectedFrag"

    const-string v1, "onStop: "

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->unInit()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mTopSupportBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 173
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

    .line 343
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->mIntoBt:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$drawable;->home_selector_had_con_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method
