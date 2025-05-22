.class public Lcom/powervision/base/utils/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# static fields
.field private static DEFAULT_ALPHA:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    sput v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceFitsSystemWindows(Landroid/app/Activity;)V
    .locals 0

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->forceFitsSystemWindows(Landroid/view/Window;)V

    return-void
.end method

.method public static forceFitsSystemWindows(Landroid/view/ViewGroup;)V
    .locals 5

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 427
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 428
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 429
    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/powervision/base/utils/SystemBarHelper;->forceFitsSystemWindows(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 431
    :cond_0
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static forceFitsSystemWindows(Landroid/view/Window;)V
    .locals 1

    .line 419
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->forceFitsSystemWindows(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static immersiveStatusBar(Landroid/app/Activity;)V
    .locals 1

    .line 166
    sget v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    invoke-static {p0, v0}, Lcom/powervision/base/utils/SystemBarHelper;->immersiveStatusBar(Landroid/app/Activity;F)V

    return-void
.end method

.method public static immersiveStatusBar(Landroid/app/Activity;F)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/base/utils/SystemBarHelper;->immersiveStatusBar(Landroid/view/Window;F)V

    return-void
.end method

.method public static immersiveStatusBar(Landroid/view/Window;)V
    .locals 1

    .line 193
    sget v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    invoke-static {p0, v0}, Lcom/powervision/base/utils/SystemBarHelper;->immersiveStatusBar(Landroid/view/Window;F)V

    return-void
.end method

.method public static immersiveStatusBar(Landroid/view/Window;F)V
    .locals 4

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 211
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    if-lt v0, v1, :cond_1

    .line 212
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 214
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 216
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x100

    .line 219
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    .line 230
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    neg-int p0, p0

    .line 231
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 232
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_2
    invoke-static {v0, p1}, Lcom/powervision/base/utils/SystemBarHelper;->setTranslucentView(Landroid/view/ViewGroup;F)V

    return-void
.end method

.method public static isFlyme4Later()Z
    .locals 2

    .line 375
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "Flyme_OS_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "Flyme OS [4|5]"

    .line 377
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMIUI6Later()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 383
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 384
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ro.miui.ui.version.name"

    aput-object v5, v4, v0

    .line 385
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "[vV]"

    const-string v4, ""

    .line 386
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static setHeightAndPadding(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 398
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v1, p0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 399
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static setPadding(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v1, p0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 407
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private static setStatusBar(Landroid/view/ViewGroup;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-static {p0, p1, p2, v0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBar(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private static setStatusBar(Landroid/view/ViewGroup;IZZ)V
    .locals 5

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 322
    sget v0, Lcom/powervision/base/R$id;->statusbar_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 325
    sget v2, Lcom/powervision/base/R$id;->statusbar_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 326
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    .line 327
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_0

    .line 329
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 336
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static setStatusBarDarkMode(Landroid/app/Activity;)V
    .locals 0

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkMode(Landroid/view/Window;)V

    return-void
.end method

.method public static setStatusBarDarkMode(Landroid/view/Window;)V
    .locals 2

    .line 245
    invoke-static {}, Lcom/powervision/base/utils/SystemBarHelper;->isFlyme4Later()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0, v1}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkModeForFlyme4(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/SystemBarHelper;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p0, v1}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkModeForMIUI6(Landroid/view/Window;Z)V

    goto :goto_0

    .line 249
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 250
    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkModeForM(Landroid/view/Window;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setStatusBarDarkModeForFlyme4(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 278
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 279
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 283
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    not-int p1, v2

    and-int/2addr p1, v4

    .line 290
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 291
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StatusBar"

    const-string p1, "setStatusBarDarkIcon: failed"

    .line 294
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static setStatusBarDarkModeForM(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x4000000

    .line 260
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 261
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 264
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    .line 266
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static setStatusBarDarkModeForMIUI6(Landroid/view/Window;Z)V
    .locals 8

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 309
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 312
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 313
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static setTranslucentView(Landroid/view/ViewGroup;F)V
    .locals 4

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 349
    sget v0, Lcom/powervision/base/R$id;->translucent_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 352
    sget v1, Lcom/powervision/base/R$id;->translucent_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 353
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/base/utils/SystemBarHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/high16 p0, 0x437f0000    # 255.0f

    mul-float p1, p1, p0

    float-to-int p0, p1

    const/4 p1, 0x0

    .line 358
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static tintStatusBar(Landroid/app/Activity;I)V
    .locals 1

    .line 43
    sget v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    invoke-static {p0, p1, v0}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    return-void
.end method

.method public static tintStatusBar(Landroid/app/Activity;IF)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBar(Landroid/view/Window;IF)V

    return-void
.end method

.method public static tintStatusBar(Landroid/view/Window;I)V
    .locals 1

    .line 64
    sget v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    invoke-static {p0, p1, v0}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBar(Landroid/view/Window;IF)V

    return-void
.end method

.method public static tintStatusBar(Landroid/view/Window;IF)V
    .locals 4

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    if-lt v0, v1, :cond_1

    .line 80
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 82
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 91
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 94
    :cond_2
    invoke-static {v0, p1, v1}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBar(Landroid/view/ViewGroup;IZ)V

    .line 95
    invoke-static {v0, p2}, Lcom/powervision/base/utils/SystemBarHelper;->setTranslucentView(Landroid/view/ViewGroup;F)V

    return-void
.end method

.method public static tintStatusBarForDrawer(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    .line 109
    sget v0, Lcom/powervision/base/utils/SystemBarHelper;->DEFAULT_ALPHA:F

    invoke-static {p0, p1, p2, v0}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBarForDrawer(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;IF)V

    return-void
.end method

.method public static tintStatusBarForDrawer(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;IF)V
    .locals 6

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/high16 v5, 0x4000000

    if-lt v3, v4, :cond_1

    .line 134
    invoke-virtual {p0, v5}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v3, -0x80000000

    .line 135
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 137
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 139
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x400

    or-int/lit16 v3, v3, 0x100

    .line 142
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    const/4 p0, 0x1

    .line 147
    invoke-static {v0, p2, p0, p0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBar(Landroid/view/ViewGroup;IZZ)V

    .line 148
    invoke-static {v0, p3}, Lcom/powervision/base/utils/SystemBarHelper;->setTranslucentView(Landroid/view/ViewGroup;F)V

    .line 150
    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 151
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 152
    invoke-virtual {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method
