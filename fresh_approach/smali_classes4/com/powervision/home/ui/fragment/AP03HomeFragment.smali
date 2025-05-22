.class public Lcom/powervision/home/ui/fragment/AP03HomeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AP03HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/home/ui/view/IAP03HomeFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;",
        "Lcom/powervision/home/model/impl/HomeFragmentModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/home/ui/view/IAP03HomeFragmentView;"
    }
.end annotation


# static fields
.field private static final Tag:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field private imageAlpha:Landroid/widget/ImageView;

.field private isChina:Z

.field isConnected:Z

.field private loadingView:Landroid/widget/ImageView;

.field private mHomeCenterDeviceIv:Landroid/widget/ImageView;

.field private mHomeIntoDevice:Landroid/widget/TextView;

.field private mImageConnect:Landroid/widget/ImageView;

.field private mImageSupport:Landroid/widget/ImageView;

.field private mImageSupport2:Landroid/widget/ImageView;

.field private mLayoutConnect:Landroid/widget/LinearLayout;

.field private mLlUpdateLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mStatConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

.field private mTextDisconnect:Landroid/widget/TextView;

.field private mTopDeviceName:Landroid/widget/ImageView;

.field private rootView:Landroidx/cardview/widget/CardView;

.field private rotateAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isChina:Z

    .line 500
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isConnected:Z

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/home/ui/fragment/AP03HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mStatConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeCenterDeviceIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initAnimListener(Z)V
    .locals 6

    .line 581
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isNormalMode()Z

    move-result v0

    .line 586
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeCenterDeviceIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v3, Lcom/powervision/home/R$array;->ap03_usb_connect_anim:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/powervision/home/R$array;->ap03_dv_connect_anim:I

    :goto_0
    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mStatConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    .line 590
    new-instance v2, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;ZZ)V

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/FrameAnimation;->setAnimationListener(Lcom/powervision/base/utils/FrameAnimation$AnimationListener;)V

    .line 619
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mStatConnectAnim:Lcom/powervision/base/utils/FrameAnimation;

    invoke-virtual {v0}, Lcom/powervision/base/utils/FrameAnimation;->justPlay()V

    .line 622
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->otherAnimation(Z)V

    return-void
.end method

.method private intoDeviceTypeActivity()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$DilBw6cH8qkTbPWC-RYZNolw3z4;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$DilBw6cH8qkTbPWC-RYZNolw3z4;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$showSupportPopWindow$0(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 217
    sget v0, Lcom/powervision/home/R$id;->flight_record_layout:I

    if-ne p1, v0, :cond_0

    .line 218
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$FlightLog;->getFlightLogActivity()Landroid/app/Activity;

    goto :goto_0

    .line 219
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    const-string v1, "/aircraft/AirCraftControlActivity"

    if-ne p1, v0, :cond_1

    .line 220
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    if-ne p1, v0, :cond_2

    .line 222
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getFindActivity()Landroid/app/Activity;

    goto :goto_0

    .line 223
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->tv_intoDV:I

    if-ne p1, v0, :cond_3

    .line 224
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->tv_intoAir:I

    if-ne p1, v0, :cond_4

    .line 226
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 228
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static newInstance()Lcom/powervision/home/ui/fragment/AP03HomeFragment;
    .locals 2

    .line 113
    new-instance v0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-direct {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;-><init>()V

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onClickIntoDevice(Landroid/view/View;)V
    .locals 2

    .line 244
    sget v0, Lcom/powervision/home/R$id;->home_into_device:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 246
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/home/ui/activity/GuideMainModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$anim;->anim_bottom_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_top_out:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 249
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode_switch"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 252
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isNormalMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/home/ui/activity/GuideFlyModeSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_link_device"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 259
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/home/ui/activity/GuideMainModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/powervision/home/R$anim;->anim_bottom_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_top_out:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method private otherAnimation(Z)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 632
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/home/R$string;->AP03_Home_4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTopDeviceName:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageConnect:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLayoutConnect:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTextDisconnect:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/home/R$string;->AP03_ConnectGuide_73:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTopDeviceName:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageConnect:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLayoutConnect:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 644
    iget-object v2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTextDisconnect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 646
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 649
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v7

    const/high16 v0, 0x41200000    # 10.0f

    .line 650
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v5

    const/high16 v0, 0x41a00000    # 20.0f

    .line 651
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    const/high16 v0, 0x41f00000    # 30.0f

    .line 652
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v6

    const/high16 v0, 0x42480000    # 50.0f

    .line 653
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v8

    const/high16 v0, 0x42700000    # 60.0f

    .line 654
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v4

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-array p1, v0, [F

    .line 656
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 658
    :goto_1
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$wzF5gF9wz2Z7T-mah9MGBAV5t90;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$wzF5gF9wz2Z7T-mah9MGBAV5t90;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;IIIIII)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x258

    .line 684
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 685
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 686
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

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

.method private showSupportPopWindow(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 200
    sget v1, Lcom/powervision/home/R$layout;->home_menu_add_pop_up:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    sget v1, Lcom/powervision/home/R$id;->flight_record_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    sget v2, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    sget v3, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    sget v4, Lcom/powervision/home/R$id;->tv_intoDV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 205
    sget v5, Lcom/powervision/home/R$id;->tv_intoAir:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 210
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 213
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 215
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$O43kZpu8b6YbsgxEu5Fts7Lr3qs;

    invoke-direct {v0, v6}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$O43kZpu8b6YbsgxEu5Fts7Lr3qs;-><init>(Landroid/widget/PopupWindow;)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 237
    invoke-virtual {v6, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private showSwitchModeDialog(Ljava/lang/String;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    sget v1, Lcom/powervision/home/R$string;->AP03_Activation_6:I

    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1, v2}, Lcom/powervision/base/utils/DialogUtils;->verticalDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private workUserRealNameRegisterFun()V
    .locals 9

    .line 534
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "AP03_FLY_UAS_ID_PSN_CODE"

    .line 536
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_ACTIVATION_PSN_CODE"

    .line 538
    invoke-virtual {v0, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "AP03_FLY_UAS_ID"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    const-string v3, "="

    .line 542
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 543
    array-length v3, v1

    if-lez v3, :cond_2

    .line 544
    array-length v3, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v7, v1, v6

    .line 545
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 547
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/+"

    .line 548
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 549
    array-length v2, v2

    if-lez v2, :cond_0

    .line 550
    aget-object v1, v1, v5

    .line 552
    invoke-virtual {v0, v4, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    const-string v1, ""

    .line 563
    invoke-virtual {v0, v4, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "AP03_FLY_UAS_ID_UPDATE_TIME"

    const-wide/16 v2, 0x0

    .line 566
    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_4

    .line 569
    invoke-static {}, Lcom/powervision/base/utils/TimeUtils;->getTodayZero()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    new-instance v0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->show()V

    :cond_4
    return-void
.end method


# virtual methods
.method public armIn()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf28
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 298
    sget v0, Lcom/powervision/home/R$string;->AP03_Msg_134:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->showSwitchModeDialog(Ljava/lang/String;)V

    return-void
.end method

.method public armOut()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf27
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 290
    sget v0, Lcom/powervision/home/R$string;->AP03_Msg_135:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->showSwitchModeDialog(Ljava/lang/String;)V

    return-void
.end method

.method public deviceConnectAnimation()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf22
    .end annotation

    .line 373
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->intoDeviceTypeActivity()V

    return-void
.end method

.method public deviceUpgradeConfirm()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc7
    .end annotation

    const-string v0, "firmware"

    .line 356
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "deviceUpgradeConfirm"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->checkDeviceUpgrade()V

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 121
    sget v0, Lcom/powervision/home/R$layout;->home_fragment_ap03:I

    return v0
.end method

.method public hideDownLoad()V
    .locals 0

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$K9-EPwiCUYGe4G-7XbNnJAnoX1A;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$K9-EPwiCUYGe4G-7XbNnJAnoX1A;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected init()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->init()V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 151
    new-instance v0, Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    .line 152
    iget-object v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->init_Fragemnt(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    .line 153
    sget v0, Lcom/powervision/home/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->loadingView:Landroid/widget/ImageView;

    .line 154
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updateMatch()V

    .line 155
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->getAssestVersion(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 132
    sget p1, Lcom/powervision/home/R$id;->top_device_name_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTopDeviceName:Landroid/widget/ImageView;

    .line 133
    sget p1, Lcom/powervision/home/R$id;->home_center_device_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeCenterDeviceIv:Landroid/widget/ImageView;

    .line 134
    sget p1, Lcom/powervision/home/R$id;->home_into_device:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_73:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 136
    sget p1, Lcom/powervision/home/R$id;->image_support:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport:Landroid/widget/ImageView;

    .line 137
    sget p1, Lcom/powervision/home/R$id;->image_support2:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport2:Landroid/widget/ImageView;

    .line 139
    sget p1, Lcom/powervision/home/R$id;->alpha_image:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->imageAlpha:Landroid/widget/ImageView;

    .line 140
    sget p1, Lcom/powervision/home/R$id;->image_connect:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageConnect:Landroid/widget/ImageView;

    .line 141
    sget p1, Lcom/powervision/home/R$id;->layout_connect:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLayoutConnect:Landroid/widget/LinearLayout;

    .line 143
    sget p1, Lcom/powervision/home/R$id;->home_activity_child_item:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    .line 144
    sget p1, Lcom/powervision/home/R$id;->text_status_disconnect:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mTextDisconnect:Landroid/widget/TextView;

    .line 146
    sget p1, Lcom/powervision/home/R$id;->upgrade_sidebar_root_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLlUpdateLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public intentToUpgradeActivity(I)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$hideLoading$5$AP03HomeFragment()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 449
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->loadingView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$intoDeviceTypeActivity$2$AP03HomeFragment()V
    .locals 5

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isConnected:Z

    .line 319
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->notifyContentViews(I)V

    .line 320
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/powervision/base/event/PVW4ConnectTestEvent;

    invoke-direct {v2, v0}, Lcom/powervision/base/event/PVW4ConnectTestEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->initAnimListener(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Device_Connection"

    const-string v2, ""

    .line 324
    invoke-static {v1, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 323
    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 326
    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_PHONE_LATITUDE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "BP_PHONE_LONGITUDE"

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-static {}, Lcom/powervision/base/utils/LotChinaUtil;->getInstance()Lcom/powervision/base/utils/LotChinaUtil;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/powervision/base/utils/LotChinaUtil;->isInsideChina(DD)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isChina:Z

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isChina:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->workUserRealNameRegisterFun()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onDeviceConnectStatus$6$AP03HomeFragment()V
    .locals 1

    const/4 v0, 0x1

    .line 497
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->notifyContentViews(I)V

    return-void
.end method

.method public synthetic lambda$onDeviceDisconnectStatus$7$AP03HomeFragment()V
    .locals 3

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->notifyContentViews(I)V

    .line 516
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/powervision/base/event/PVW4ConnectTestEvent;

    invoke-direct {v2, v0}, Lcom/powervision/base/event/PVW4ConnectTestEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 517
    invoke-direct {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->initAnimListener(Z)V

    return-void
.end method

.method public synthetic lambda$onRoboticArmStateChangeView$1$AP03HomeFragment()V
    .locals 1

    .line 274
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected()Z

    move-result v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->notifyContentViews(I)V

    return-void
.end method

.method public synthetic lambda$otherAnimation$8$AP03HomeFragment(IIIIIILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 660
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    int-to-float p1, p1

    mul-float p1, p1, p7

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float p2, p2, p7

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-int p3, p3

    int-to-float p4, p4

    mul-float p4, p4, p7

    float-to-int p4, p4

    int-to-float p5, p5

    mul-float p5, p5, p7

    float-to-int p5, p5

    .line 667
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 668
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 669
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 670
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 671
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 672
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    int-to-float p2, p4

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 674
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    int-to-float p2, p5

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 676
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->imageAlpha:Landroid/widget/ImageView;

    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setAlpha(F)V

    int-to-float p1, p6

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p7

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 679
    iget-object p2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLlUpdateLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 680
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 681
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 682
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mLlUpdateLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic lambda$showLoading$4$AP03HomeFragment()V
    .locals 9

    .line 427
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->loadingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x929

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 432
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 433
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 435
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 436
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 437
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->loadingView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public synthetic lambda$updateActivationStatus$3$AP03HomeFragment()V
    .locals 1

    .line 418
    const-class v0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public lockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf7
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 469
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

    .line 470
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$mipmap;->home_selector_had_con_unclick:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public notifyContentViews(I)V
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->setViewTag(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->startDownLoadApp()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 169
    sget v1, Lcom/powervision/home/R$id;->home_into_device:I

    if-ne v0, v1, :cond_5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick()...Ap03HomeFragment GCSConnectionManager.get().isAp03Connected()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect_status"

    .line 170
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isRightLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    sget p1, Lcom/powervision/home/R$string;->AP03_Msg_134:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->showSwitchModeDialog(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 179
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->onClickIntoDevice(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->onClickIntoDevice(Landroid/view/View;)V

    goto :goto_0

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    sget p1, Lcom/powervision/home/R$string;->AP03_Upgrade_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "lock_app"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 186
    sget p1, Lcom/powervision/home/R$string;->APP_Msg_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_5
    sget v1, Lcom/powervision/home/R$id;->image_support:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/powervision/home/R$id;->image_support2:I

    if-ne v0, v1, :cond_7

    .line 190
    :cond_6
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->showSupportPopWindow(Landroid/view/View;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->commonPresenter:Lcom/powervision/home/ui/adapter/CommonPresenter;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->onDestroy()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->removeListeners()V

    .line 464
    :cond_1
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroyView()V

    .line 109
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeviceConnectStatus()V
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$imFjrgsK_KN02H_cemhzlOTcqKY;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$imFjrgsK_KN02H_cemhzlOTcqKY;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceConnectStatusChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->onDeviceConnectStatus()V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->onDeviceDisconnectStatus()V

    :goto_0
    return-void
.end method

.method public onDeviceDisconnectStatus()V
    .locals 2

    .line 506
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->isConnected:Z

    .line 510
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 514
    :cond_1
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$fRJZnWECdCV9-I4Iz-Id4iDzSD4;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$fRJZnWECdCV9-I4Iz-Id4iDzSD4;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    .line 103
    sget-object v0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->Tag:Ljava/lang/String;

    const-string v1, "..AP03HomeFragment..onPause()..."

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 97
    sget-object v0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->Tag:Ljava/lang/String;

    const-string v1, "..AP03HomeFragment..onResume() ..."

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRoboticArmStateChangeView(ZZZ)V
    .locals 0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRoboticArmStateChangeView/...... normalMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mode_switch"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance p2, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$XMj_YeTKQObYKeKX6Tr9odTIod4;

    invoke-direct {p2, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$XMj_YeTKQObYKeKX6Tr9odTIod4;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 2

    const-string v0, "mode_switch"

    const-string v1, "..... onRoboticArmStateGet()"

    .line 281
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->intoDeviceTypeActivity()V

    return-void
.end method

.method public remoteUpgradeConfirm()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc9
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->checkRemoteUpgrade()V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 161
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mImageSupport2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViewTag(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 345
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$id;->home_into_device:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    sget v0, Lcom/powervision/home/R$id;->home_into_device:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public showDownLoad()V
    .locals 0

    return-void
.end method

.method public showFirmwareDialog(IZ)V
    .locals 2

    .line 403
    new-instance v0, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;-><init>(Landroid/content/Context;I)V

    .line 404
    invoke-virtual {v0, p2}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->setForceUpgrade(Z)V

    .line 405
    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/UpgradeDialogUtil;->show()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->rootView:Landroidx/cardview/widget/CardView;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$TWjpkDd_EF3J5oN-q_DJekQgEIU;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$TWjpkDd_EF3J5oN-q_DJekQgEIU;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unlockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf8
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    const-string v0, "lzqFirm"

    const-string v1, "unlockDevice..."

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->mHomeIntoDevice:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$drawable;->home_selector_had_con_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public updateActivationStatus()V
    .locals 2

    const-string v0, "Activation-test"

    const-string v1, "\u8df3\u8f6c\u6fc0\u6d3b\u9875\u9762"

    .line 413
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$j_n4TwkYkl4yQOCr7wC4o5ZCoZc;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/-$$Lambda$AP03HomeFragment$j_n4TwkYkl4yQOCr7wC4o5ZCoZc;-><init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
