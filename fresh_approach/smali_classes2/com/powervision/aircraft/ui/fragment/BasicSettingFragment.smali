.class public Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "BasicSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private closeBt:Landroid/widget/ImageView;

.field private finger:I

.field private line_show_music_toggle:Landroid/widget/ToggleButton;

.field private mAbout:Landroid/widget/TextView;

.field private mDisplayCutEnd:I

.field private mLiveStream:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mTextResetAll:Landroid/widget/TextView;

.field private mTextSwipe:Landroid/widget/TextView;

.field private mTextUnit:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private unit:I

.field private unitStatus:Lcom/powervision/base/model/UnitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextSwipe:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextUnit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)Lcom/powervision/base/model/UnitStatus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->unitStatus:Lcom/powervision/base/model/UnitStatus;

    return-object p0
.end method

.method private resetGuide()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AIR_GUIDE"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "AIR_MAP_GUIDE"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SMART_FOLLOW_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "SMART_FOLLOW_REMINDER_L"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "SMART_FOLLOW_REMINDER_P"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "SMART_FOLLOW_REMINDER_WATER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "INTEREST_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "JIAN_YUAN_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "HUAN_RAO_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "LUO_XUAN_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "CHONG_TIAN_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "TUO_YUAN_REMINDER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showChangeSwipePop(Landroid/widget/TextView;)V
    .locals 8

    .line 174
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_setting_swipe_layout:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    sget v1, Lcom/powervision/aircraft/R$id;->text_double:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    sget v2, Lcom/powervision/aircraft/R$id;->text_single:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v6, "PV_SWIPE_STATUS"

    invoke-virtual {v5, v6, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 180
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v5, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 182
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    new-instance v6, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$2;

    invoke-direct {v6, p0, v5, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;

    invoke-direct {v1, p0, v5, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$4;

    invoke-direct {v1, p0, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1c

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_2

    .line 226
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 232
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    .line 234
    aget v2, v1, v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 236
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayCutEnd = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 238
    aget p1, v1, v3

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr p1, v2

    aput p1, v1, v3

    .line 240
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showChangeUnitPop(Landroid/widget/TextView;)V
    .locals 8

    .line 248
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_setting_unit_layout:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 249
    sget v1, Lcom/powervision/aircraft/R$id;->text_ms:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    sget v2, Lcom/powervision/aircraft/R$id;->text_mpj:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 251
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 254
    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v6, "PV_UNIT_STATUS"

    invoke-virtual {v5, v6, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 255
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v5, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 257
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    new-instance v6, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$5;

    invoke-direct {v6, p0, v5, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;

    invoke-direct {v1, p0, v5, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$6;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;

    invoke-direct {v1, p0, v4, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$7;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1c

    .line 298
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_2

    .line 299
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 305
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    .line 307
    aget v2, v1, v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 308
    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mDisplayCutEnd:I

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 309
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    aget p1, v1, v3

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr p1, v2

    aput p1, v1, v3

    .line 313
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 68
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_basic_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 99
    new-instance v0, Lcom/powervision/base/model/UnitStatus;

    invoke-direct {v0}, Lcom/powervision/base/model/UnitStatus;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->unitStatus:Lcom/powervision/base/model/UnitStatus;

    .line 100
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 101
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 74
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_200:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 77
    sget p1, Lcom/powervision/aircraft/R$id;->about:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mAbout:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/powervision/aircraft/R$id;->text_unit:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextUnit:Landroid/widget/TextView;

    .line 79
    sget p1, Lcom/powervision/aircraft/R$id;->text_swipe:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextSwipe:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/powervision/aircraft/R$id;->text_guide_reset:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextResetAll:Landroid/widget/TextView;

    .line 81
    sget p1, Lcom/powervision/aircraft/R$id;->live_stream_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mLiveStream:Landroid/widget/TextView;

    .line 82
    sget p1, Lcom/powervision/aircraft/R$id;->line_show_music_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->line_show_music_toggle:Landroid/widget/ToggleButton;

    .line 83
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic lambda$setListener$0$BasicSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 132
    sget v0, Lcom/powervision/aircraft/R$id;->about:I

    if-ne p1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x67

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 135
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->text_unit:I

    if-ne p1, v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextUnit:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->showChangeUnitPop(Landroid/widget/TextView;)V

    goto :goto_0

    .line 138
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->text_swipe:I

    if-ne p1, v0, :cond_2

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextSwipe:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->showChangeSwipePop(Landroid/widget/TextView;)V

    goto :goto_0

    .line 140
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->text_guide_reset:I

    if-ne p1, v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->resetGuide()V

    .line 142
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_200:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    goto :goto_0

    .line 143
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->live_stream_content:I

    if-ne p1, v0, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6e

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 320
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 321
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "PV_UNIT_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->unit:I

    .line 123
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextUnit:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_203:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_205:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "PV_SWIPE_STATUS"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->finger:I

    .line 126
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextSwipe:Landroid/widget/TextView;

    if-nez v0, :cond_1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_221:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_222:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BasicSettingFragment$Sqh7Jke_mlRtgiCw-4tGybhfpnM;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$BasicSettingFragment$Sqh7Jke_mlRtgiCw-4tGybhfpnM;-><init>(Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextSwipe:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mTextResetAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mLiveStream:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRootLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/BasicSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    return-void
.end method
