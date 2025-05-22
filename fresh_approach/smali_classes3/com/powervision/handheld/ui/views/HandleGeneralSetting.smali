.class public Lcom/powervision/handheld/ui/views/HandleGeneralSetting;
.super Landroid/widget/LinearLayout;
.source "HandleGeneralSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handheldCloudFragment:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

.field private handheldGeneralFragment:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

.field private handheldLiveFragment:Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;

.field private index:I

.field private isVertical:Z

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mContentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mEmptyView:Landroid/view/View;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mImageClose:Landroid/widget/ImageView;

.field private mPagerAdapter:Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTitles:Landroid/util/SparseIntArray;

.field private mViewPager:Lcom/powervision/base/views/NoScrollViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->isVertical:Z

    const/4 p2, 0x2

    .line 129
    iput p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    .line 76
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->isVertical:Z

    .line 83
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_0

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$layout;->handhleld_new_setting_view_ver:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$layout;->handhleld_new_setting_view_hor:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    :goto_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 90
    check-cast p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    .line 91
    invoke-virtual {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 92
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->initViews()V

    if-nez p2, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->initHorView()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/views/HandleGeneralSetting;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    return-object p0
.end method

.method private initFragments()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->getInstance()Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldLiveFragment:Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;

    .line 160
    invoke-static {}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getInstance()Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldCloudFragment:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    .line 161
    invoke-static {}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getInstance()Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldGeneralFragment:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    .line 162
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->setRootLayout(Landroid/widget/FrameLayout;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    .line 164
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldLiveFragment:Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldCloudFragment:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->handheldGeneralFragment:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initHorView()V
    .locals 3

    .line 114
    sget v0, Lcom/powervision/handheld/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitle:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/powervision/handheld/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mClose:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/powervision/handheld/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mEmptyView:Landroid/view/View;

    .line 117
    sget v0, Lcom/powervision/handheld/R$id;->top:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mContentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mEmptyView:Landroid/view/View;

    sget-object v1, Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$BiF_079tr_zEKBMnDhEKt4uy2JE;->INSTANCE:Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$BiF_079tr_zEKBMnDhEKt4uy2JE;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initTitles()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 124
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_37:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_187:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_200:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 135
    new-instance v0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;-><init>(Lcom/powervision/handheld/ui/views/HandleGeneralSetting;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mPagerAdapter:Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;

    .line 136
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget v1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 138
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/handheld/R$id;->radio_general:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 139
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$yUiiQUaUzMJE4BZp6ejOP002iaU;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$yUiiQUaUzMJE4BZp6ejOP002iaU;-><init>(Lcom/powervision/handheld/ui/views/HandleGeneralSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 99
    sget v0, Lcom/powervision/handheld/R$id;->radioGroup:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 100
    sget v0, Lcom/powervision/handheld/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 101
    sget v0, Lcom/powervision/handheld/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mImageClose:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcom/powervision/handheld/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mRootLayout:Landroid/widget/FrameLayout;

    .line 104
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->initFragments()V

    .line 105
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->initTitles()V

    .line 106
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->initViewPager()V

    .line 107
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mImageClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$x3JXbi5-ZsaRqUsHOvudiA04irg;->INSTANCE:Lcom/powervision/handheld/ui/views/-$$Lambda$HandleGeneralSetting$x3JXbi5-ZsaRqUsHOvudiA04irg;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initHorView$1(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method static synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 1

    .line 107
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initViewPager$2$HandleGeneralSetting(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 140
    sget p1, Lcom/powervision/handheld/R$id;->radio_live:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    goto :goto_0

    .line 142
    :cond_0
    sget p1, Lcom/powervision/handheld/R$id;->radio_cloud:I

    if-ne p2, p1, :cond_1

    .line 143
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    goto :goto_0

    .line 144
    :cond_1
    sget p1, Lcom/powervision/handheld/R$id;->radio_general:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    .line 145
    iput p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    .line 147
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 148
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 149
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mTitles:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->index:I

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mPagerAdapter:Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting$ViewPagerAdapter;->release()V

    .line 217
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public setNotchPadding(II)V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->isVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    sget p2, Lcom/powervision/handheld/R$id;->ver_root:I

    invoke-virtual {p0, p2}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 178
    invoke-virtual {p2, v1, p1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->mContentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1, v1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method
