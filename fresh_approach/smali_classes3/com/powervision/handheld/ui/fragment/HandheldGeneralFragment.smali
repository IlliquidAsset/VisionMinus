.class public Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "HandheldGeneralFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;
    }
.end annotation


# instance fields
.field private audioState:I

.field private bgView:Landroid/view/View;

.field private cacheView:Landroid/view/View;

.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private decorView:Landroid/view/ViewGroup;

.field private deviceCode:Ljava/lang/String;

.field private mAbout:Landroid/widget/TextView;

.field private mCameraModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mDeviceVersion:Landroid/widget/TextView;

.field private mJoinSubClassListener:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSaveModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mText16g:Landroid/widget/TextView;

.field private mText2g:Landroid/widget/TextView;

.field private mText4g:Landroid/widget/TextView;

.field private mText8g:Landroid/widget/TextView;

.field private mTextAuto:Landroid/widget/TextView;

.field private mTextCache:Landroid/widget/TextView;

.field private mTextDeleteCache:Landroid/widget/TextView;

.field private mTextReset:Landroid/widget/TextView;

.field private mToggle:Landroid/widget/ToggleButton;

.field private mTypeCMode:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private snStr:Ljava/lang/String;

.field private snText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, "0"

    .line 73
    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTypeCMode:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->showCacheSelectPop()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextCache:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->bgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;
    .locals 1

    .line 76
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-direct {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;-><init>()V

    return-object v0
.end method

.method private resetGuide()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AP03_HANDHELD_GUIDE"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showCacheSelectPop()V
    .locals 6

    .line 170
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_cache_select_layout:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    .line 171
    sget v1, Lcom/powervision/handheld/R$id;->text_2g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText2g:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->text_4g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText4g:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->text_8g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText8g:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->text_16g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText16g:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->text_auto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextAuto:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText2g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText4g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText8g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mText16g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextAuto:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->bgView:Landroid/view/View;

    .line 183
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->bgView:Landroid/view/View;

    new-instance v1, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$2;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x1c

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 203
    iget-object v2, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextCache:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 204
    iget-object v2, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x1

    .line 211
    aget v5, v1, v4

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 212
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 214
    iget-object v5, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDisplayCutEnd = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " location[1] = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " location[0] = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cacheView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showTypeCMode(Ljava/lang/String;)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    new-instance v1, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldGeneralFragment$B_czeIWbCBk1vPu8IohY93hqjLE;

    invoke-direct {v1, p0, p1}, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldGeneralFragment$B_czeIWbCBk1vPu8IohY93hqjLE;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 81
    sget v0, Lcom/powervision/handheld/R$layout;->handheld_general_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 238
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_PSN_CODE"

    .line 240
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->snStr:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->snText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_DEVICE_VERSION_CODE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->deviceCode:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mDeviceVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    sget p1, Lcom/powervision/handheld/R$id;->device_version:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mDeviceVersion:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/powervision/handheld/R$id;->about:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mAbout:Landroid/widget/TextView;

    .line 90
    sget p1, Lcom/powervision/handheld/R$id;->delete_cache:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextDeleteCache:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/powervision/handheld/R$id;->text_sn:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->snText:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/powervision/handheld/R$id;->text_guide_reset:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextReset:Landroid/widget/TextView;

    .line 94
    sget p1, Lcom/powervision/handheld/R$id;->text_max_cache:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextCache:Landroid/widget/TextView;

    .line 96
    sget p1, Lcom/powervision/handheld/R$id;->cache_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mToggle:Landroid/widget/ToggleButton;

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 99
    sget p1, Lcom/powervision/handheld/R$id;->save_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mSaveModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    .line 100
    sget p1, Lcom/powervision/handheld/R$id;->camera_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mCameraModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    return-void
.end method

.method public synthetic lambda$onIntegrationUpgradeGetVersionSuccess$0$HandheldGeneralFragment(Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mDeviceVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$showTypeCMode$1$HandheldGeneralFragment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 341
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mSaveModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 342
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mCameraModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    return-void
.end method

.method public onCameraNotifyOnGetTypeCMode(Ljava/lang/String;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->showTypeCMode(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraNotifyOnSetTypeCMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTypeCMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->showTypeCMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 255
    sget v0, Lcom/powervision/handheld/R$id;->about:I

    if-ne p1, v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mJoinSubClassListener:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;

    if-eqz p1, :cond_3

    .line 257
    invoke-interface {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;->toSubClass()V

    goto :goto_0

    .line 259
    :cond_0
    sget v0, Lcom/powervision/handheld/R$id;->text_guide_reset:I

    if-ne p1, v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->resetGuide()V

    .line 261
    sget p1, Lcom/powervision/handheld/R$string;->AP03_Msg_200:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    goto :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/powervision/handheld/R$id;->save_mode_checkbox:I

    if-ne p1, v0, :cond_2

    .line 263
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setTypeCMode(I)V

    const-string p1, "0"

    .line 264
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTypeCMode:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AP03_Storage_mode"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 266
    :cond_2
    sget v0, Lcom/powervision/handheld/R$id;->camera_mode_checkbox:I

    if-ne p1, v0, :cond_3

    .line 267
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setTypeCMode(I)V

    const-string p1, "1"

    .line 268
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTypeCMode:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AP03_C_UVC"

    const-string v1, ""

    .line 270
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 269
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 283
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeAp03IntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V

    .line 284
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnSetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;)V

    .line 285
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;)V

    .line 286
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_"

    const/16 v1, 0xc

    .line 313
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_FIRMWARE_VERSION"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mDeviceVersion:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldGeneralFragment$f1vWYWcP2uhYIZHfxO6oa8576ow;

    invoke-direct {v1, p0, p1}, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldGeneralFragment$f1vWYWcP2uhYIZHfxO6oa8576ow;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

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

    .line 291
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

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

.method public onResume()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 222
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->audioState:I

    .line 232
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getTypeCMode()V

    return-void
.end method

.method public setIntegrationUpgradeGetVersionTimeout()V
    .locals 2

    const-string v0, "about"

    .line 321
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u7248\u672c\u53f7\u8d85\u65f6"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setJoinSubClassListener(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mJoinSubClassListener:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$JoinSubClassListener;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 116
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextCache:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03OnIntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mTextReset:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mSaveModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mCameraModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnSetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;)V

    return-void
.end method

.method public setRootLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->mRootLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    const-string p1, "1 null llllllllllllllllllllll"

    .line 130
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "1 not null llllllllllllllllllllll"

    .line 132
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
