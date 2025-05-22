.class public Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "RemoteControlSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;
    }
.end annotation


# static fields
.field private static final CUSTOM_KEY_GET_SUCCESS:I = 0x2

.field private static final CUSTOM_KEY_SET_SUCCESS:I = 0x1


# instance fields
.field private closeBt:Landroid/widget/ImageView;

.field private customKey:I

.field private customKeys:[Ljava/lang/String;

.field private mCalibrationText:Landroid/widget/TextView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mCurrentMode:Landroid/widget/TextView;

.field private mDisplayCutEnd:I

.field private mRemoteInstructions:Landroid/widget/TextView;

.field private mRemoteModeLayout:Landroid/widget/RelativeLayout;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mTextControllerMatch:Landroid/widget/TextView;

.field private mTextCustomButton:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private remoteControlHandler:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;

.field private setKey:I

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKey:I

    .line 65
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setKey:I

    .line 66
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mDisplayCutEnd:I

    .line 73
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->remoteControlHandler:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 88
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKey:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKeys:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setKey:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setRemoteMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCurrentMode:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_106:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 162
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCurrentMode:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_107:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 164
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCurrentMode:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_108:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCurrentMode:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_107:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private showChangeCustomPop(Landroid/widget/TextView;)V
    .locals 12

    .line 206
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_control_custom_layout:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    sget v1, Lcom/powervision/aircraft/R$id;->text_map_fpv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    sget v2, Lcom/powervision/aircraft/R$id;->text_battery:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    sget v3, Lcom/powervision/aircraft/R$id;->text_fly:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 210
    sget v4, Lcom/powervision/aircraft/R$id;->text_gimbal:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 211
    sget v5, Lcom/powervision/aircraft/R$id;->text_undefined:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 213
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v7, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKeys:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 216
    iget-object v8, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 218
    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    sget v10, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    sget v10, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 220
    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    goto :goto_2

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 222
    :goto_2
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    goto :goto_3

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    sget v11, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 224
    :goto_3
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x4

    if-ne v7, v10, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    sget v10, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-static {v7, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    goto :goto_4

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    sget v10, Lcom/powervision/aircraft/R$color;->white:I

    invoke-static {v7, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 226
    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    new-instance v7, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$aMzRwgVQMVLHlnhxozyjQukaH0E;

    invoke-direct {v7, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$aMzRwgVQMVLHlnhxozyjQukaH0E;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$EAipphD3xcDUf_gD6vVreHwXeUw;

    invoke-direct {v1, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$EAipphD3xcDUf_gD6vVreHwXeUw;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$OxtADbPOuLHf3Ah-5g_vCWk-0yE;

    invoke-direct {v1, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$OxtADbPOuLHf3Ah-5g_vCWk-0yE;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$tOniITEs-xX9eeYuZIvLDYEwH1s;

    invoke-direct {v1, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$tOniITEs-xX9eeYuZIvLDYEwH1s;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$5iAl06HlGvm5Yz4_bwuzoUkqDMU;

    invoke-direct {v1, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$5iAl06HlGvm5Yz4_bwuzoUkqDMU;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$_8ENReHCXNPVUjvHxoW6eCiBJQ0;

    invoke-direct {v1, p0, v6, v0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$_8ENReHCXNPVUjvHxoW6eCiBJQ0;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x1c

    .line 265
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_5

    .line 266
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 268
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mDisplayCutEnd:I

    :cond_5
    new-array v1, v9, [I

    .line 272
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    aget v1, v1, v8

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 275
    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mDisplayCutEnd:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 276
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 108
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_remote_control_setting_layout:I

    return v0
.end method

.method public getRemoteMode(Landroid/util/SparseIntArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa2
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const-string v0, "remote"

    .line 149
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setRemoteMode(I)V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 174
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 175
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_234:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->remote_control_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKeys:[Ljava/lang/String;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 114
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/powervision/aircraft/R$id;->layout_remote_calibration:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCalibrationText:Landroid/widget/TextView;

    .line 116
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 117
    sget p1, Lcom/powervision/aircraft/R$id;->text_custom_button:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    .line 118
    sget p1, Lcom/powervision/aircraft/R$id;->layout_remote_mode:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRemoteModeLayout:Landroid/widget/RelativeLayout;

    .line 119
    sget p1, Lcom/powervision/aircraft/R$id;->current_mode_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCurrentMode:Landroid/widget/TextView;

    .line 120
    sget p1, Lcom/powervision/aircraft/R$id;->layout_remote_frequency:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextControllerMatch:Landroid/widget/TextView;

    .line 121
    sget p1, Lcom/powervision/aircraft/R$id;->layout_remote_guide:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRemoteInstructions:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$RemoteControlSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$1$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_CK_MODE"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 232
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$2$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 237
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_CK_MODE"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 238
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$3$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_CK_MODE"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 243
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 244
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$4$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 248
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_CK_MODE"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 249
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 250
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$5$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 254
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_CK_MODE"

    const/4 v1, 0x4

    invoke-virtual {p3, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 255
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 256
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showChangeCustomPop$6$RemoteControlSettingFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 261
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 262
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 182
    sget v0, Lcom/powervision/aircraft/R$id;->layout_remote_calibration:I

    if-ne p1, v0, :cond_1

    .line 183
    sget-boolean p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x66

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 186
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_194:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 188
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->layout_remote_mode:I

    if-ne p1, v0, :cond_2

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x68

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 190
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->layout_remote_frequency:I

    if-ne p1, v0, :cond_3

    .line 191
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6a

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 192
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->layout_remote_guide:I

    if-ne p1, v0, :cond_4

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6c

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 194
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->text_custom_button:I

    if-ne p1, v0, :cond_5

    .line 195
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->showChangeCustomPop(Landroid/widget/TextView;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 283
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 285
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteParameterDownloadFailed==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=====i==="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteControlSetting=="

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteParameterDownloadSuccess==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====i==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlSetting=="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PV_CK_MODE"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->customKey:I

    .line 302
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->remoteControlHandler:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 2

    const-string v0, "RemoteControlSetting=="

    const-string v1, "onRemoteParameterDownloadFailed==="

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteParameterUploadFailed==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=====i==="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteControlSetting=="

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteParameterUploadSuccess==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====i==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlSetting=="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PV_CK_MODE"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setKey:I

    .line 293
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->remoteControlHandler:Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment$RemoteControlHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 2

    const-string v0, "RemoteControlSetting=="

    const-string v1, "onRemoteParameterDownloadFailed==="

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const-string v0, "remote"

    .line 140
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onResume()"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "PV_REMOTE_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->setRemoteMode(I)V

    .line 143
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_CK_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 127
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 128
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mCalibrationText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRemoteModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRemoteInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextCustomButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$TAT1Wk_E1aNxLpJJbXpbMRgcUds;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteControlSettingFragment$TAT1Wk_E1aNxLpJJbXpbMRgcUds;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mTextControllerMatch:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRootLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteControlSettingFragment;->mRootLayout:Landroid/widget/FrameLayout;

    return-void
.end method
