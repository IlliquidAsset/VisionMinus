.class public Lcom/powervision/base/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private height:I

.field private originalHeight:I

.field private originalWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    .line 28
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    .line 29
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I

    .line 30
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    .line 33
    iput-object p1, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/powervision/base/utils/ScreenUtils;->init()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getActionBarSize(Landroid/content/Context;)I
    .locals 4

    .line 395
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getFollowScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 381
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 382
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 383
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 384
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getFollowScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 368
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 369
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 370
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 166
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getScreenDensityDpi(Landroid/content/Context;)I
    .locals 0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 308
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 309
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 310
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2

    .line 321
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 322
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 323
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 324
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 331
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

.method public static hasNavigationBar(Landroid/view/WindowManager;)Z
    .locals 2

    .line 338
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 339
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 342
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 343
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 345
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 346
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 347
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 348
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-lt v1, v4, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    .line 42
    :try_start_0
    const-class v1, Landroid/view/Display;

    const-string v2, "getRawHeight"

    new-array v4, v3, [Ljava/lang/Class;

    .line 43
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    .line 44
    const-class v1, Landroid/view/Display;

    const-string v2, "getRawWidth"

    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 52
    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 53
    const-class v2, Landroid/view/Display;

    const-string v4, "getRealSize"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Point;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 54
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    .line 56
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :cond_1
    :goto_0
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    iget v1, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I

    const-wide v2, 0x3ff8cccccccccccdL    # 1.55

    const/4 v4, 0x2

    const-wide v5, 0x3ffc7ae147ae147bL    # 1.78

    if-le v0, v1, :cond_4

    .line 61
    div-int v7, v0, v1

    if-gt v7, v4, :cond_3

    div-int v4, v0, v1

    int-to-double v7, v4

    cmpg-double v4, v7, v2

    if-gez v4, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    .line 66
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    goto :goto_3

    .line 62
    :cond_3
    :goto_1
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    int-to-double v1, v0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    .line 63
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    goto :goto_3

    :cond_4
    if-le v1, v0, :cond_7

    .line 69
    div-int v7, v1, v0

    if-gt v7, v4, :cond_6

    div-int v4, v1, v0

    int-to-double v7, v4

    cmpg-double v4, v7, v2

    if-gez v4, :cond_5

    goto :goto_2

    .line 73
    :cond_5
    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    .line 74
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    goto :goto_3

    .line 70
    :cond_6
    :goto_2
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I

    int-to-double v1, v0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    .line 71
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    goto :goto_3

    :cond_7
    int-to-double v1, v0

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 77
    iput v1, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    .line 78
    iput v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    :goto_3
    return-void
.end method

.method public static noActionBar(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method public static removeThenavigationBar(Landroid/view/Window;)V
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x6

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static setFullScreen(Landroid/app/Activity;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/ScreenUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public dip2px(I)I
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/ScreenUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public getDensity(Landroid/content/Context;)F
    .locals 0

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method

.method public getScreenHeight()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->height:I

    return v0
.end method

.method public getScreenOriginalHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalHeight:I

    return v0
.end method

.method public getScreenOriginalWidth()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->originalWidth:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/powervision/base/utils/ScreenUtils;->width:I

    return v0
.end method

.method public getStatusHeight()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 149
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public px2dip(F)I
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/ScreenUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v1, v3

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int p1, v1

    return p1
.end method

.method public px2dip(I)I
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/powervision/base/utils/ScreenUtils;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/powervision/base/utils/ScreenUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v1, v3

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int p1, v1

    return p1
.end method

.method public setSizeWithWidthAndBackground(ILandroid/view/View;II)V
    .locals 5

    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 220
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, p1

    int-to-double v3, p3

    div-double/2addr v1, v3

    int-to-double p3, p4

    mul-double v1, v1, p3

    double-to-int p1, v1

    .line 221
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public snapShotWithStatusBar(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 4

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    .line 183
    invoke-virtual {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 185
    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    return-object v0
.end method

.method public snapShotWithoutStatusBar(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 5

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 203
    iget p1, v2, Landroid/graphics/Rect;->top:I

    .line 205
    invoke-virtual {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v2

    .line 206
    invoke-virtual {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    .line 208
    invoke-static {v1, v4, p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    return-object p1
.end method
