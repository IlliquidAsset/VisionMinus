.class public Lcom/powervision/home/ui/fragment/HomeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/home/ui/view/IHomeFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;",
        "Lcom/powervision/home/model/impl/HomeFragmentModel;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/home/ui/view/IHomeFragmentView;"
    }
.end annotation


# instance fields
.field private mCbDot1:Landroid/widget/CheckBox;

.field private mCbDot2:Landroid/widget/CheckBox;

.field private mLlDot:Landroid/widget/LinearLayout;

.field private mTopSupportBt:Landroid/widget/ImageView;

.field private mViewPager:Lcom/powervision/base/views/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/fragment/HomeFragment;)Lcom/powervision/base/views/NoScrollViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/fragment/HomeFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mTopSupportBt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/fragment/HomeFragment;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->workDotSelect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/fragment/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mLlDot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initViewPager()V
    .locals 3

    .line 107
    sget v0, Lcom/powervision/home/R$id;->home_select_device_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/fragment/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 108
    new-instance v1, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setOffscreenPageLimit(I)V

    .line 110
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(I)V

    .line 111
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setScroll(Z)V

    return-void
.end method

.method private joinFindAircraft()V
    .locals 0

    .line 212
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getFindActivity()Landroid/app/Activity;

    return-void
.end method

.method private joinFlightLogAircraft()V
    .locals 0

    .line 216
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$FlightLog;->getFlightLogActivity()Landroid/app/Activity;

    return-void
.end method

.method public static newInstance()Lcom/powervision/home/ui/fragment/HomeFragment;
    .locals 1

    .line 65
    new-instance v0, Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-direct {v0}, Lcom/powervision/home/ui/fragment/HomeFragment;-><init>()V

    return-object v0
.end method

.method private showSupportPopWindow(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    sget v1, Lcom/powervision/home/R$layout;->home_menu_add_pop_up:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    sget v1, Lcom/powervision/home/R$id;->flight_record_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    sget v2, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    sget v3, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 175
    sget v4, Lcom/powervision/home/R$id;->tv_intoDV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 176
    sget v5, Lcom/powervision/home/R$id;->tv_intoAir:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 181
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 184
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 186
    new-instance v0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;

    invoke-direct {v0, p0, v6}, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$_K2TpZfGL1xwYYyUgYFEh0Nm3yI;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment;Landroid/widget/PopupWindow;)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    invoke-virtual {v6, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private startConnectAnimation(Z)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setScroll(Z)V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 270
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 272
    :goto_0
    new-instance v0, Lcom/powervision/home/ui/fragment/HomeFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/fragment/HomeFragment$2;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x258

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mLlDot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 289
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

.method private workDotSelect(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot1:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot2:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot1:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot2:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 70
    sget v0, Lcom/powervision/home/R$layout;->home_fragment_home:I

    return v0
.end method

.method protected initData()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->initViewPager()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    sget p1, Lcom/powervision/home/R$id;->home_top_support_icon:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mTopSupportBt:Landroid/widget/ImageView;

    .line 78
    sget p1, Lcom/powervision/home/R$id;->ll_home_dot_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mLlDot:Landroid/widget/LinearLayout;

    .line 79
    sget p1, Lcom/powervision/home/R$id;->cb_home_dot_select_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot1:Landroid/widget/CheckBox;

    .line 80
    sget p1, Lcom/powervision/home/R$id;->cb_home_dot_select_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mCbDot2:Landroid/widget/CheckBox;

    return-void
.end method

.method public synthetic lambda$showSupportPopWindow$0$HomeFragment(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 188
    sget v0, Lcom/powervision/home/R$id;->flight_record_layout:I

    if-ne p2, v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->joinFlightLogAircraft()V

    goto :goto_0

    .line 190
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->no_fly_zone_layout:I

    const-string v1, "/aircraft/AirCraftControlActivity"

    if-ne p2, v0, :cond_1

    .line 191
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->find_aircraft_layout:I

    if-ne p2, v0, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->joinFindAircraft()V

    goto :goto_0

    .line 194
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->tv_intoDV:I

    if-ne p2, v0, :cond_3

    .line 195
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p2

    const-string v0, "/handheld/NewHandheldDeviceActivity"

    invoke-virtual {p2, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->tv_intoAir:I

    if-ne p2, v0, :cond_4

    .line 197
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 199
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$updateDeviceConnectStatus$1$HomeFragment(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updatePVW4ConnectStatus$2$HomeFragment(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 243
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askTheAcitiviteStatus(I)V

    .line 244
    invoke-static {}, Lcom/powervision/gcs/manager/PsnGetUtil;->get()Lcom/powervision/gcs/manager/PsnGetUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PsnGetUtil;->askPsnCode()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 161
    sget v0, Lcom/powervision/home/R$id;->home_top_support_icon:I

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mTopSupportBt:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->showSupportPopWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 256
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStart()V

    .line 145
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    return-void
.end method

.method public onTestEvent(Lcom/powervision/base/event/PVW4ConnectTestEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 262
    iget-boolean p1, p1, Lcom/powervision/base/event/PVW4ConnectTestEvent;->isConnect:Z

    invoke-direct {p0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->startConnectAnimation(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mTopSupportBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    new-instance v1, Lcom/powervision/home/ui/fragment/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/fragment/HomeFragment$1;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public updateDeviceConnectStatus(I)V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$JmHSj9IyH09tkYW6ZU9sOMyM_yc;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$JmHSj9IyH09tkYW6ZU9sOMyM_yc;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePVW4ConnectStatus(I)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/powervision/home/ui/fragment/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$fIPXG5fSOolrTa4NW46mHpVl7V8;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$fIPXG5fSOolrTa4NW46mHpVl7V8;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;

    invoke-direct {v1, p1}, Lcom/powervision/base/event/PVW4ConnectStatusEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
