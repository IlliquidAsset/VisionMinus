.class public Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartFollowModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

.field private avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

.field private followSubmode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mBackIv:Landroid/widget/ImageView;

.field private mCloseIv:Landroid/widget/ImageView;

.field private mContentText:Landroid/widget/TextView;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mCurrentMode:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLockImg:Landroid/widget/ImageView;

.field private mNoramlImg:Landroid/widget/ImageView;

.field private mNormalModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mParalleImg:Landroid/widget/ImageView;

.field private mParallelModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mStaticModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mode:I

.field private preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private smartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 47
    const-class v0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentMode:I

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    .line 336
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    .line 63
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)Lcom/powervision/base/dialog/AvoidanceDialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->showCloseDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->startNormalMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->showAvoidanceDialog(I)V

    return-void
.end method

.method private setFollowMode(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 227
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentMode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 229
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    const/16 v2, 0x15

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_normal_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 238
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    const/16 v2, 0x16

    if-nez p1, :cond_3

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    .line 242
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 245
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_parallel_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    .line 247
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    const/16 v2, 0x17

    if-nez p1, :cond_6

    .line 248
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_7

    .line 251
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->followSubmode:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 254
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_lock_follow"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private showAvoidanceDialog(I)V
    .locals 2

    .line 276
    new-instance v0, Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    .line 277
    invoke-virtual {v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->show()V

    .line 279
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setToggleChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectListener(Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;)V

    return-void
.end method

.method private showCloseDialog()V
    .locals 2

    .line 316
    new-instance v0, Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 317
    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setSingle(Z)Lcom/powervision/base/dialog/CommonDialog;

    .line 318
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_210:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 319
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setDialogTitle(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 320
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 321
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;

    .line 333
    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->show()V

    return-void
.end method

.method private startNormalMode()V
    .locals 5

    .line 187
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v4, "========111111"

    invoke-static {v0, v4}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v4, v3, [I

    aput v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v4, "========222222"

    invoke-static {v0, v4}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v4, v3, [I

    aput v2, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 194
    :cond_1
    :goto_0
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 68
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_follow_mode_select_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 119
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 120
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    sget p1, Lcom/powervision/aircraft/R$id;->normal_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mNormalModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    sget p1, Lcom/powervision/aircraft/R$id;->parallel_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mParallelModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    sget p1, Lcom/powervision/aircraft/R$id;->static_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mStaticModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    sget p1, Lcom/powervision/aircraft/R$id;->back_arrow:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mBackIv:Landroid/widget/ImageView;

    .line 81
    sget p1, Lcom/powervision/aircraft/R$id;->close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCloseIv:Landroid/widget/ImageView;

    .line 82
    sget p1, Lcom/powervision/aircraft/R$id;->smart_follow_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mTitleText:Landroid/widget/TextView;

    .line 83
    sget p1, Lcom/powervision/aircraft/R$id;->smart_water_follow_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mContentText:Landroid/widget/TextView;

    .line 84
    sget p1, Lcom/powervision/aircraft/R$id;->normal_mode_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mNoramlImg:Landroid/widget/ImageView;

    .line 85
    sget p1, Lcom/powervision/aircraft/R$id;->location_mode_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mParalleImg:Landroid/widget/ImageView;

    .line 86
    sget p1, Lcom/powervision/aircraft/R$id;->static_mode_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mLockImg:Landroid/widget/ImageView;

    .line 87
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_4:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mContentText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mNoramlImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_noraml_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mParalleImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_paralle_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mLockImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_lock_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_25:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mContentText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mNoramlImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_noraml_water_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mParalleImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_paralle_water_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mLockImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_lock_water_follow_select_mode_img:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 135
    sget v0, Lcom/powervision/aircraft/R$id;->normal_mode_layout:I

    const-string v1, "helin"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "SMART_FOLLOW_REMINDER"

    invoke-virtual {p1, v0, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string v0, "MPC_AVOI_ON"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: \u666e\u901a\u8ddf\u968f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-static {p1, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->newInstance(II)Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->smartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    .line 144
    invoke-virtual {p0, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_2

    .line 146
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->parallel_mode_layout:I

    const/4 v4, 0x4

    if-ne p1, v0, :cond_5

    .line 147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "SMART_FOLLOW_REMINDER_P"

    invoke-virtual {p1, v0, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 148
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v1, "========333333"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v2, [I

    aput v0, v1, v3

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 152
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v1, "========444444"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v2, [I

    const/4 v2, 0x5

    aput v2, v1, v3

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 155
    :cond_3
    :goto_0
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentMode:I

    goto/16 :goto_2

    .line 157
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: \u5e73\u884c\u8ddf\u968f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->newInstance(II)Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->smartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    .line 159
    invoke-virtual {p0, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_2

    .line 162
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->static_mode_layout:I

    if-ne p1, v0, :cond_9

    .line 163
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "SMART_FOLLOW_REMINDER_L"

    invoke-virtual {p1, v0, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_8

    .line 164
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    if-nez p1, :cond_6

    .line 165
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v1, "========555555"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v2, [I

    aput v0, v1, v3

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    .line 168
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    const-string v1, "========666666"

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v2, [I

    const/4 v2, 0x6

    aput v2, v1, v3

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 171
    :cond_7
    :goto_1
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentMode:I

    goto :goto_2

    .line 173
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: \u76ee\u6807\u9501\u5b9a\u8ddf\u968f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->newInstance(II)Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->smartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    .line 175
    invoke-virtual {p0, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 179
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->close_iv:I

    if-ne p1, v0, :cond_a

    .line 180
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_2

    .line 181
    :cond_a
    sget v0, Lcom/powervision/aircraft/R$id;->back_arrow:I

    if-ne p1, v0, :cond_b

    .line 182
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    const-string v0, "helin"

    const-string v1, "onDestroy: mode"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 128
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener()V

    .line 129
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    return-void
.end method

.method public onSetParmasResultFailed(II)V
    .locals 2

    .line 205
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ty2pe==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 2

    .line 199
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ty1pe==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->setFollowMode(I)V

    return-void
.end method

.method public onSmartFunctionActuaHight(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionActuaSpeed(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 0

    return-void
.end method

.method public setFollowModeFlag(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mode:I

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mNormalModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mParallelModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mStaticModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->initSDK()V

    .line 112
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setOnSetFollowParmasListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 113
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->ap03SetGetParamResultListener:Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    return-void
.end method

.method public switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 261
    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 262
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 263
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_1
    :goto_0
    return-void
.end method
