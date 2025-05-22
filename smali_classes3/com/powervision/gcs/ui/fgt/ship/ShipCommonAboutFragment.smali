.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipCommonAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;,
        Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MODE_BRITISH:I = 0x1

.field public static final MODE_CLEAR_HOLD:I = 0x0

.field public static final MODE_CLEAR_MOVE:I = 0x1

.field public static final MODE_METRIC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShipCommonAboutFragment"

.field private static deepColorCurrVal:I = 0x28


# instance fields
.field private final MODE_UNIT:I

.field aboutLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xbc2
    .end annotation
.end field

.field button:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1130
    .end annotation
.end field

.field private clearModeArray:[I

.field private mActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field private mClearModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;

.field private mPopupwindowRootLayout:Landroid/widget/FrameLayout;

.field mTextUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf32
    .end annotation
.end field

.field pvsonarCommonClearMode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf31
    .end annotation
.end field

.field resIds:[I

.field selfCheckLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfc0
    .end annotation
.end field

.field toggleGuide:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1132
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;

.field private unitArray:[I

.field private unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

.field private utils:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 76
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 74
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideRes:[I

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->resIds:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 234
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    new-array v0, v0, [I

    .line 235
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_77:I

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_78:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    .line 237
    iput v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->MODE_UNIT:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Lcom/powervision/base/utils/SPHelperUtils;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private changeClearModelArray(I)[I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_78:I

    aput v2, p1, v1

    .line 270
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_77:I

    aput v1, p1, v0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_77:I

    aput v2, p1, v1

    .line 273
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_78:I

    aput v1, p1, v0

    .line 275
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    return-object p1
.end method

.method private changeUnitArray(I)[I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_59:I

    aput v2, p1, v0

    .line 253
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    aput v0, p1, v1

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    aput v2, p1, v0

    .line 256
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_59:I

    aput v0, p1, v1

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    return-object p1
.end method

.method private getGuideStatus()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->resIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v3, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->resIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private showClearPopupWindow(Landroid/widget/TextView;)V
    .locals 10

    .line 367
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 368
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 370
    sget v1, Lcom/powervision/gcs/R$layout;->window_pvsonar_select_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 373
    sget v1, Lcom/powervision/gcs/R$id;->tv1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    sget v2, Lcom/powervision/gcs/R$id;->tv2:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 375
    sget v3, Lcom/powervision/gcs/R$id;->tv3:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 381
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getViewClearMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->changeClearModelArray(I)[I

    .line 383
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    .line 385
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/gcs/R$color;->color_4374E6:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 389
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 394
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 395
    aget p1, v7, v5

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr p1, v8

    aput p1, v7, v5

    .line 396
    aget p1, v7, v6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, p1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p1, 0xb

    .line 397
    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 398
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 400
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$4;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$Xb6oFCltHdTkXk-XUnS1eJHqD9E;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$Xb6oFCltHdTkXk-XUnS1eJHqD9E;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$ruC1NSVaXP49oHbjGPnuitqwzEs;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$ruC1NSVaXP49oHbjGPnuitqwzEs;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopupWindow(Landroid/widget/TextView;)V
    .locals 10

    .line 284
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 285
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 287
    sget v1, Lcom/powervision/gcs/R$layout;->window_pvsonar_select_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 289
    sget v1, Lcom/powervision/gcs/R$id;->tv1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    sget v2, Lcom/powervision/gcs/R$id;->tv2:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    sget v3, Lcom/powervision/gcs/R$id;->tv3:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {v4}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->changeUnitArray(I)[I

    .line 299
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    .line 301
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/gcs/R$color;->color_4374E6:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 310
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 311
    aget p1, v7, v5

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr p1, v8

    aput p1, v7, v5

    .line 312
    aget p1, v7, v6

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, p1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p1, 0xb

    .line 313
    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$ZnU686Mbsf7i65-BCqHLqAjxAA8;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$ZnU686Mbsf7i65-BCqHLqAjxAA8;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance p1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$_3v3QgK-UouNtptz7n_P0yOePYY;

    invoke-direct {p1, p0, v3}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipCommonAboutFragment$_3v3QgK-UouNtptz7n_P0yOePYY;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public about_layout()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xbc2
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 170
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showCommonSettingAboutDetailFragment()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_common_about_item:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->button:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getLineStatus()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 84
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->button:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic lambda$showClearPopupWindow$2$ShipCommonAboutFragment(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 0

    .line 432
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showClearPopupWindow$3$ShipCommonAboutFragment(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 2

    .line 437
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getViewClearMode()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 438
    invoke-static {p2}, Lcom/powervision/gcs/utils/SpStore;->setViewClearMode(I)V

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_77:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mClearModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;

    if-eqz v0, :cond_1

    .line 442
    invoke-interface {v0, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;->currentClearMode(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 445
    invoke-static {p2}, Lcom/powervision/gcs/utils/SpStore;->setViewClearMode(I)V

    .line 446
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_78:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 448
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mClearModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;

    if-eqz v0, :cond_1

    .line 449
    invoke-interface {v0, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;->currentClearMode(I)V

    .line 453
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showPopupWindow$0$ShipCommonAboutFragment(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 1

    .line 324
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {p2}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result p2

    if-nez p2, :cond_0

    .line 325
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveUnitMode(I)V

    .line 327
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

    if-eqz p2, :cond_1

    .line 328
    invoke-interface {p2, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;->currentMode(I)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_59:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveUnitMode(I)V

    .line 333
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

    if-eqz p2, :cond_1

    .line 334
    invoke-interface {p2, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;->currentMode(I)V

    .line 338
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showPopupWindow$1$ShipCommonAboutFragment(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 1

    .line 343
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {p2}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result p2

    if-nez p2, :cond_0

    .line 344
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_59:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveUnitMode(I)V

    .line 346
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

    if-eqz p2, :cond_1

    .line 347
    invoke-interface {p2, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;->currentMode(I)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_58:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveUnitMode(I)V

    .line 352
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

    if-eqz p2, :cond_1

    .line 353
    invoke-interface {p2, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;->currentMode(I)V

    .line 357
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 490
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 491
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unbinder:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    .line 498
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->utils:Lcom/powervision/base/utils/SPHelperUtils;

    .line 112
    invoke-virtual {p1}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->changeUnitArray(I)[I

    .line 113
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getViewClearMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->changeClearModelArray(I)[I

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processLogic1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getViewClearMode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipCommonAboutFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLogic2: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitArray:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->clearModeArray:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->setListener()V

    .line 120
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->toggleGuide:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->getGuideStatus()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 122
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->toggleGuide:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public pvsonar_common_clear_mode()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf31
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->pvsonarCommonClearMode:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->showClearPopupWindow(Landroid/widget/TextView;)V

    return-void
.end method

.method public pvsonar_common_unit_tv()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xf32
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mTextUnit:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->showPopupWindow(Landroid/widget/TextView;)V

    return-void
.end method

.method public self_check_layout()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfc0
        }
    .end annotation

    return-void
.end method

.method public setClearModeChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mClearModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$ClearModeChangeListener;

    return-void
.end method

.method public setRootLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->mPopupwindowRootLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setToggleChecked(Z)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public setUnitChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->unitChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$UnitChangeListener;

    return-void
.end method
