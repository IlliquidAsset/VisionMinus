.class public Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;
.super Landroid/widget/FrameLayout;
.source "SmartTopFuncitonView.java"


# static fields
.field public static final TAG_CONTENT_FOLLOW_GUDIE:I = 0x3

.field public static final TAG_CONTENT_FOLLOW_MODE:I = 0x4

.field public static final TAG_CONTENT_GUDIE:I = 0x1

.field public static final TAG_CONTENT_SURROUND_MODE:I = 0x2

.field public static final TAG_ONE_KEY_CLIPS:I = 0x5

.field public static final TAG_ONE_KEY_CLIPS_GUILD:I = 0x6

.field public static final TAG_TIME_CAPTURE:I = 0x7


# instance fields
.field private final TAG_CONTENT_MENU:I

.field private delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

.field private delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

.field private localFollowMode:I

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mOneClipsGuideFragment:Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

.field mPointSurroundGuideFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

.field mPointSurroundModeFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

.field mSmartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

.field mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

.field mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

.field mSmartOneKeyClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

.field private mode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private smartFollowGuideFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->TAG_CONTENT_MENU:I

    .line 149
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mode:Landroid/util/SparseArray;

    .line 109
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->TAG_CONTENT_MENU:I

    .line 149
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mode:Landroid/util/SparseArray;

    .line 114
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->TAG_CONTENT_MENU:I

    .line 149
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mode:Landroid/util/SparseArray;

    .line 120
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initViews()V

    return-void
.end method

.method private initFragmentByIndex(IZ)V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-nez p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->setMenuItemClickListener(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    if-eqz p2, :cond_2

    .line 159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 160
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 163
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartMenuFragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "INTEREST_REMINDER"

    invoke-virtual {p1, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 170
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_1

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundGuideFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

    if-nez p1, :cond_5

    .line 173
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundGuideFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

    :cond_5
    if-eqz p2, :cond_6

    .line 176
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundGuideFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 177
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 179
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundGuideFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    .line 183
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundModeFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

    if-nez p1, :cond_8

    .line 184
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundModeFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

    :cond_8
    if-eqz p2, :cond_9

    .line 187
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundModeFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 188
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 190
    :cond_9
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mPointSurroundModeFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x3

    if-ne p1, v4, :cond_b

    .line 194
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 195
    iget p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->localFollowMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v0, 0xf53

    invoke-virtual {p2, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x4

    if-ne p1, v4, :cond_f

    .line 212
    iget p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->localFollowMode:I

    const-string v5, "helin"

    if-nez p1, :cond_e

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    if-nez p1, :cond_c

    .line 214
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p1, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    .line 216
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFragmentByIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_d

    .line 218
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 219
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 221
    :cond_d
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartFollowModeFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->localFollowMode:I

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->setFollowModeFlag(I)V

    goto/16 :goto_1

    :cond_e
    if-ne p1, v2, :cond_15

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initFragmentByIndex: boolean = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "SMART_FOLLOW_REMINDER_WATER"

    invoke-virtual {p2, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 228
    invoke-virtual {p1, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p2, 0xb

    .line 229
    invoke-virtual {p1, v2, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v0, 0xf54

    invoke-virtual {p2, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_1

    :cond_f
    const/4 v1, 0x5

    if-ne p1, v1, :cond_12

    .line 242
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartOneKeyClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

    if-nez p1, :cond_10

    .line 243
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartOneKeyClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

    :cond_10
    if-eqz p2, :cond_11

    .line 246
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartOneKeyClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 247
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 249
    :cond_11
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mSmartOneKeyClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_12
    const/4 v1, 0x7

    if-ne p1, v1, :cond_15

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    if-nez p1, :cond_13

    .line 253
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    :cond_13
    if-eqz p2, :cond_14

    .line 256
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 257
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 259
    :cond_14
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_15
    :goto_1
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 125
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 127
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->preferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-void
.end method

.method private isRemind(I)Z
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "JIAN_YUAN_REMINDER"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "HUAN_RAO_REMINDER"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "LUO_XUAN_REMINDER"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "CHONG_TIAN_REMINDER"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "TUO_YUAN_REMINDER"

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 365
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public changeToDelayFragment()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 343
    sget v1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public initClipGuildFragment(II)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 267
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->isRemind(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne p1, v0, :cond_0

    .line 269
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v0, 0xb2

    invoke-virtual {p2, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 273
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    goto :goto_0

    :cond_1
    const-string p1, "changeContentViewStatus = mOneClipsGuideFragment == null"

    .line 276
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 277
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mOneClipsGuideFragment:Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

    .line 278
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clips_mode"

    .line 279
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mOneClipsGuideFragment:Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->setArguments(Landroid/os/Bundle;)V

    .line 281
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mOneClipsGuideFragment:Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 283
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 285
    :cond_2
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mOneClipsGuideFragment:Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 290
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    if-nez p1, :cond_4

    .line 291
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    .line 293
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delay_mode"

    .line 294
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->setArguments(Landroid/os/Bundle;)V

    .line 296
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_5

    .line 297
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 298
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 300
    :cond_5
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayPhotoGuideFragment:Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public initFollowFragments(II)V
    .locals 0

    .line 145
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->localFollowMode:I

    .line 146
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragmentByIndex(IZ)V

    return-void
.end method

.method public initFragments(I)V
    .locals 1

    const/4 v0, -0x1

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFollowFragments(II)V

    return-void
.end method

.method public resetAll()V
    .locals 3

    const-string v0, "helin"

    const-string v1, "resetAll: "

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 322
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 325
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 326
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 331
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->delayedPhotoFragment:Lcom/powervision/aircraft/ui/fragment/DelayedPhotoFragment;

    :cond_1
    return-void
.end method

.method public switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_2

    .line 307
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchContentFragment: mFragmentManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchContentFragment: fromFragment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_2
    :goto_1
    return-void
.end method
