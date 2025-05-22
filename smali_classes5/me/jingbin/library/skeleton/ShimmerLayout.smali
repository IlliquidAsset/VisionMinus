.class public Lme/jingbin/library/skeleton/ShimmerLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerLayout.java"


# static fields
.field private static final DEFAULT_ANGLE:B = 0x14t

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x5dc

.field private static final MAX_ANGLE_VALUE:B = 0x2dt

.field private static final MAX_GRADIENT_CENTER_COLOR_WIDTH_VALUE:B = 0x1t

.field private static final MAX_MASK_WIDTH_VALUE:B = 0x1t

.field private static final MIN_ANGLE_VALUE:B = -0x2dt

.field private static final MIN_GRADIENT_CENTER_COLOR_WIDTH_VALUE:B

.field private static final MIN_MASK_WIDTH_VALUE:B


# instance fields
.field private autoStart:Z

.field private canvasForShimmerMask:Landroid/graphics/Canvas;

.field private gradientCenterColorWidth:F

.field private gradientTexturePaint:Landroid/graphics/Paint;

.field private isAnimationReversed:Z

.field private isAnimationStarted:Z

.field private localMaskBitmap:Landroid/graphics/Bitmap;

.field private maskAnimator:Landroid/animation/ValueAnimator;

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private maskOffsetX:I

.field private maskRect:Landroid/graphics/Rect;

.field private maskWidth:F

.field private shimmerAngle:I

.field private shimmerAnimationDuration:I

.field private shimmerColor:I

.field private startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 74
    invoke-virtual {p0, p3}, Lme/jingbin/library/skeleton/ShimmerLayout;->setWillNotDraw(Z)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lme/jingbin/library/R$styleable;->ShimmerLayout:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    :try_start_0
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_angle:I

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    .line 83
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_animation_duration:I

    const/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAnimationDuration:I

    .line 84
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_color:I

    sget v0, Lme/jingbin/library/R$color;->by_skeleton_shimmer_color:I

    invoke-direct {p0, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerColor:I

    .line 85
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_auto_start:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->autoStart:Z

    .line 86
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_mask_width:I

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskWidth:F

    .line 87
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_gradient_center_color_width:I

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientCenterColorWidth:F

    .line 88
    sget p2, Lme/jingbin/library/R$styleable;->ShimmerLayout_shimmer_reverse_animation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationReversed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskWidth:F

    invoke-virtual {p0, p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->setMaskWidth(F)V

    .line 94
    iget p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientCenterColorWidth:F

    invoke-virtual {p0, p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->setGradientCenterColorWidth(F)V

    .line 95
    iget p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerAngle(I)V

    .line 97
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->enableForcedSoftwareLayerIfNeeded()V

    .line 99
    iget-boolean p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->autoStart:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    throw p2
.end method

.method static synthetic access$000(Lme/jingbin/library/skeleton/ShimmerLayout;)I
    .locals 0

    .line 29
    iget p0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskOffsetX:I

    return p0
.end method

.method static synthetic access$002(Lme/jingbin/library/skeleton/ShimmerLayout;I)I
    .locals 0

    .line 29
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskOffsetX:I

    return p1
.end method

.method private calculateBitmapMaskRect()Landroid/graphics/Rect;
    .locals 4

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->calculateMaskWidth()I

    move-result v1

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private calculateMaskWidth()I
    .locals 6

    .line 405
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskWidth:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    iget v2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 406
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 379
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 381
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createShimmerPaint()V
    .locals 13

    .line 310
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerColor:I

    invoke-direct {p0, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->reduceColorAlphaValueToZero(I)I

    move-result v0

    .line 315
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskWidth:F

    mul-float v1, v1, v3

    .line 316
    iget v3, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v6, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 318
    :goto_0
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    iget v4, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    int-to-double v7, v4

    .line 320
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float v7, v4, v1

    iget v4, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    int-to-double v8, v4

    .line 321
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v4, v4, v1

    add-float v8, v6, v4

    const/4 v1, 0x4

    new-array v9, v1, [I

    const/4 v1, 0x0

    aput v0, v9, v1

    iget v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerColor:I

    const/4 v12, 0x1

    aput v1, v9, v12

    aput v1, v9, v2

    const/4 v1, 0x3

    aput v0, v9, v1

    .line 323
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getGradientColorDistribution()[F

    move-result-object v10

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 326
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 328
    new-instance v1, Landroid/graphics/ComposeShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v0, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    .line 331
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 333
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 334
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private dispatchDrawShimmer(Landroid/graphics/Canvas;)V
    .locals 3

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 245
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    .line 254
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 256
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    iget v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 261
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 263
    invoke-direct {p0, p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->drawShimmer(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawShimmer(Landroid/graphics/Canvas;)V
    .locals 7

    .line 269
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->createShimmerPaint()V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskOffsetX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private enableForcedSoftwareLayerIfNeeded()V
    .locals 2

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0, v0, v1}, Lme/jingbin/library/skeleton/ShimmerLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getColor(I)I
    .locals 2

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getGradientColorDistribution()[F
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 417
    iget v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientCenterColorWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    const/4 v5, 0x1

    aput v3, v0, v5

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 302
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lme/jingbin/library/skeleton/ShimmerLayout;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    .line 306
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getShimmerAnimation()Landroid/animation/Animator;
    .locals 7

    .line 338
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 343
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->calculateBitmapMaskRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    .line 346
    :cond_1
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v0

    .line 349
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_2

    neg-int v1, v0

    goto :goto_0

    .line 352
    :cond_2
    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    .line 355
    :goto_0
    iget-object v2, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v1

    .line 358
    iget-boolean v3, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationReversed:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    new-array v3, v5, [I

    aput v0, v3, v6

    aput v6, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-array v3, v5, [I

    aput v6, v3, v6

    aput v0, v3, v4

    .line 359
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    .line 360
    iget v3, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 363
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lme/jingbin/library/skeleton/ShimmerLayout$2;

    invoke-direct {v3, p0, v1, v2}, Lme/jingbin/library/skeleton/ShimmerLayout$2;-><init>(Lme/jingbin/library/skeleton/ShimmerLayout;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 374
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private reduceColorAlphaValueToZero(I)I
    .locals 3

    .line 397
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private releaseBitMaps()V
    .locals 2

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    .line 295
    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private resetIfStarted()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetShimmering()V

    .line 238
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    :cond_0
    return-void
.end method

.method private resetShimmering()V
    .locals 1

    .line 280
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 282
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    .line 286
    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    .line 289
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->releaseBitMaps()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->dispatchDrawShimmer(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetShimmering()V

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAnimationReversed(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationReversed:Z

    .line 181
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setGradientCenterColorWidth(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    .line 231
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->gradientCenterColorWidth:F

    .line 232
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 228
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "gradientCenterColorWidth value must be higher than %d and less than %d"

    .line 227
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaskWidth(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_0

    .line 213
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->maskWidth:F

    .line 214
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 210
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "maskWidth value must be higher than %d and less or equal to %d"

    .line 209
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAngle(I)V
    .locals 4

    const/16 v0, 0x2d

    const/16 v1, -0x2d

    if-lt p1, v1, :cond_0

    if-lt v0, p1, :cond_0

    .line 196
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAngle:I

    .line 197
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 193
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 194
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "shimmerAngle value must be between %d and %d"

    .line 192
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAnimationDuration(I)V
    .locals 0

    .line 175
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerAnimationDuration:I

    .line 176
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setShimmerColor(I)V
    .locals 0

    .line 170
    iput p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->shimmerColor:I

    .line 171
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 123
    iget-boolean p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->autoStart:Z

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->stopShimmerAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startShimmerAnimation()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lme/jingbin/library/skeleton/ShimmerLayout$1;

    invoke-direct {v0, p0}, Lme/jingbin/library/skeleton/ShimmerLayout$1;-><init>(Lme/jingbin/library/skeleton/ShimmerLayout;)V

    iput-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 147
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->isAnimationStarted:Z

    return-void
.end method

.method public stopShimmerAnimation()V
    .locals 2

    .line 158
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 162
    :cond_0
    invoke-direct {p0}, Lme/jingbin/library/skeleton/ShimmerLayout;->resetShimmering()V

    return-void
.end method
