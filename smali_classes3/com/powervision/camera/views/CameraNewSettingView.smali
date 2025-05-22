.class public Lcom/powervision/camera/views/CameraNewSettingView;
.super Landroid/widget/LinearLayout;
.source "CameraNewSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSettingView"


# instance fields
.field private ACTION_CODE_SHOW_TOAST:I

.field private ACTION_CODE_START_RECORD:I

.field private ACTION_CODE_STOP_RECORD:I

.field private ACTION_CODE_SWITCH_MENU:I

.field private ACTION_CODE_SWITCH_PHOTO:I

.field private ACTION_CODE_SWITCH_RECORD:I

.field private ACTION_CODE_TAKE_PHOTO:I

.field private context:Landroid/content/Context;

.field private isDvMode:Z

.field private isPhoto:Z

.field private isVertical:Z

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

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

.field private mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

.field private mIndex:I

.field private mLayoutBottom:Landroid/widget/RelativeLayout;

.field private mLayoutLeft:Landroid/widget/RelativeLayout;

.field private mPagerAdapter:Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;

.field private mPhotoModeIcon:Landroid/widget/ImageView;

.field private mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

.field private mRadioCamera:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRadioSetting:Landroid/widget/RadioButton;

.field private mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

.field private mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

.field private resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/powervision/camera/views/CameraNewSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/camera/views/CameraNewSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    iput-boolean p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_SWITCH_MENU:I

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_SWITCH_RECORD:I

    const/4 p2, 0x2

    .line 53
    iput p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_SWITCH_PHOTO:I

    const/4 p2, 0x3

    .line 54
    iput p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_START_RECORD:I

    const/4 p2, 0x4

    .line 55
    iput p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_STOP_RECORD:I

    const/4 p2, 0x5

    .line 56
    iput p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_TAKE_PHOTO:I

    const/4 p2, 0x6

    .line 57
    iput p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->ACTION_CODE_SHOW_TOAST:I

    .line 85
    iput-boolean p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZZ)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Lcom/powervision/camera/views/CameraNewSettingView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    goto :goto_0

    .line 114
    :cond_0
    iput-boolean p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    .line 116
    :goto_0
    iput p3, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    .line 117
    iput-boolean p4, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isVertical:Z

    .line 118
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 119
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    .line 122
    iput-boolean p5, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    .line 123
    iget-boolean p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isVertical:Z

    if-eqz p2, :cond_1

    .line 124
    sget p2, Lcom/lewis/camera/R$layout;->aircraft_camera_new_setting_layout_ver:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 126
    :cond_1
    sget p2, Lcom/lewis/camera/R$layout;->aircraft_camera_new_setting_layout_hor:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 128
    :goto_1
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/views/CameraNewSettingView;I)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/camera/views/CameraNewSettingView;->getCheckedId(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/views/CameraNewSettingView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/camera/views/CameraNewSettingView;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    return-object p0
.end method

.method private doClickCameraSwitch()V
    .locals 2

    .line 375
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    .line 376
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 377
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_Msg_186:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 380
    :cond_0
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_1

    .line 382
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    goto :goto_0

    .line 383
    :cond_1
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_3

    .line 385
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    sget v0, Lcom/lewis/camera/R$string;->AP03_HomePage_21:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getCheckedId(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 325
    sget p1, Lcom/lewis/camera/R$id;->radio_basic:I

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 327
    sget p1, Lcom/lewis/camera/R$id;->radio_camera:I

    return p1

    .line 329
    :cond_1
    sget p1, Lcom/lewis/camera/R$id;->radio_general:I

    return p1
.end method

.method private initCameraMenu()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    return-void
.end method

.method private initFragment()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getInstance()Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    .line 338
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    const/4 v0, 0x0

    .line 339
    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    .line 341
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isDvMode:Z

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 132
    sget v0, Lcom/lewis/camera/R$id;->view_empty_cover:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mEmptyView:Landroid/view/View;

    .line 133
    sget v0, Lcom/lewis/camera/R$id;->camera_group:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 134
    sget v0, Lcom/lewis/camera/R$id;->radio_camera:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioCamera:Landroid/widget/RadioButton;

    .line 135
    sget v0, Lcom/lewis/camera/R$id;->radio_general:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioSetting:Landroid/widget/RadioButton;

    .line 136
    sget v0, Lcom/lewis/camera/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 137
    sget v0, Lcom/lewis/camera/R$id;->layout_bottom:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutBottom:Landroid/widget/RelativeLayout;

    .line 138
    sget v0, Lcom/lewis/camera/R$id;->layout_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutLeft:Landroid/widget/RelativeLayout;

    .line 139
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isVertical:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_icon_riht:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    .line 149
    :goto_0
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->initCameraMenu()V

    .line 150
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->initFragment()V

    .line 151
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->initViewPager()V

    .line 152
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->setListener()V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;-><init>(Lcom/powervision/camera/views/CameraNewSettingView;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPagerAdapter:Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;

    .line 259
    iget-object v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setOffscreenPageLimit(I)V

    .line 261
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 263
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->setRadioButtonDrawable()V

    .line 264
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    invoke-direct {p0, v1}, Lcom/powervision/camera/views/CameraNewSettingView;->getCheckedId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/powervision/camera/views/-$$Lambda$CameraNewSettingView$Lv4PKPvOAQDf9gDVmFBcJN6B8hk;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/-$$Lambda$CameraNewSettingView$Lv4PKPvOAQDf9gDVmFBcJN6B8hk;-><init>(Lcom/powervision/camera/views/CameraNewSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    new-instance v1, Lcom/powervision/camera/views/CameraNewSettingView$1;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/CameraNewSettingView$1;-><init>(Lcom/powervision/camera/views/CameraNewSettingView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setRadioButtonDrawable()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioCamera:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/lewis/camera/R$drawable;->camera_shoot_setting_selector:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/lewis/camera/R$drawable;->camera_recording_setting_selector:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    :goto_0
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setListener$0$CameraNewSettingView(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 281
    sget p1, Lcom/lewis/camera/R$id;->radio_basic:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 282
    iput p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    goto :goto_0

    .line 283
    :cond_0
    sget p1, Lcom/lewis/camera/R$id;->radio_camera:I

    if-ne p2, p1, :cond_1

    .line 284
    iput v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 286
    iput p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    .line 288
    :goto_0
    iget-object p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget p2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mIndex:I

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 350
    sget v0, Lcom/lewis/camera/R$id;->photo_record_select:I

    if-ne p1, v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->doClickCameraSwitch()V

    goto :goto_0

    .line 352
    :cond_0
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_icon:I

    const/16 v1, 0xf1

    if-ne p1, v0, :cond_1

    .line 353
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 355
    :cond_1
    sget v0, Lcom/lewis/camera/R$id;->camera_setting:I

    const/16 v2, 0xb5

    if-ne p1, v0, :cond_2

    .line 356
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 357
    :cond_2
    sget v0, Lcom/lewis/camera/R$id;->media_library:I

    if-ne p1, v0, :cond_4

    .line 358
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_Home_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_3
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_4
    sget v0, Lcom/lewis/camera/R$id;->view_empty_cover:I

    if-ne p1, v0, :cond_5

    .line 364
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 365
    :cond_5
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_icon_riht:I

    if-ne p1, v0, :cond_6

    .line 366
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPagerAdapter:Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView$ViewPagerAdapter;->release()V

    const-string v0, "destroy"

    .line 438
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDetachedFromWindow"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 444
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public resetViewPager()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/powervision/base/views/NoScrollViewPager;->removeAllViews()V

    .line 273
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/powervision/base/views/NoScrollViewPager;->removeAllViewsInLayout()V

    .line 274
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->initViewPager()V

    return-void
.end method

.method public setCameraSettingEnable(ZZ)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioCamera:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 166
    iget-object p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mRadioSetting:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public setViewPaddingStart(I)V
    .locals 2

    .line 400
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isVertical:Z

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v1, 0x42a00000    # 80.0f

    .line 402
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 403
    iget-object p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public switchCamerMenuStatus()V
    .locals 5

    .line 173
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraConnectionStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  isSlowMotion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettingView"

    .line 175
    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x4

    if-ne v0, v1, :cond_3

    .line 179
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    if-eqz v0, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    .line 181
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->resetViewPager()V

    .line 183
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 184
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_slow_motion:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 189
    :cond_3
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_7

    .line 190
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    if-eqz v0, :cond_4

    .line 191
    iput-boolean v2, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    .line 192
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->resetViewPager()V

    .line 194
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-eq v0, v4, :cond_6

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_1

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_recording:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 195
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_slow_motion_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 201
    :cond_7
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->isPhoto:Z

    .line 203
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraNewSettingView;->resetViewPager()V

    .line 217
    :cond_8
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 219
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_capture_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 225
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 227
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_delay_photoing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_c
    if-ne v0, v3, :cond_d

    .line 229
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    :goto_2
    return-void
.end method

.method public updateBasicFragmentAdapter()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapter()V

    :cond_0
    return-void
.end method

.method public updateHandheldGeneralAdapter()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/powervision/camera/views/CameraNewSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->notifyAdapter()V

    :cond_0
    return-void
.end method

.method public updatePhotoModeIcon(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa6
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->resId:I

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo mode resId= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/views/CameraNewSettingView;->resId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
