.class public Lcom/yalantis/ucrop/util/ImageChangeHelper;
.super Ljava/lang/Object;
.source "ImageChangeHelper.java"


# static fields
.field public static final FULL_CIRCLE_DEGREE:D = 360.0

.field public static final HALF_CIRCLE_DEGREE:D = 180.0

.field public static final PI:D = 3.14159

.field public static final RANGE:D = 256.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustContrast(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42fe0000    # 127.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 v1, 0x42800000    # 64.0f

    div-float v1, p1, v1

    sub-float/2addr v1, v0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr p1, v3

    mul-float p1, p1, v2

    goto :goto_0

    :cond_0
    div-float v1, p1, v1

    const/high16 v2, 0x43010000    # 129.0f

    sub-float p1, v2, p1

    .line 121
    :goto_0
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    const/4 v4, 0x4

    aput p1, v3, v4

    const/4 v4, 0x5

    aput v5, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v5, v3, v4

    const/16 v4, 0x8

    aput v5, v3, v4

    const/16 v4, 0x9

    aput p1, v3, v4

    const/16 v4, 0xa

    aput v5, v3, v4

    const/16 v4, 0xb

    aput v5, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    const/16 v1, 0xd

    aput v5, v3, v1

    const/16 v1, 0xe

    aput p1, v3, v1

    const/16 p1, 0xf

    aput v5, v3, p1

    const/16 p1, 0x10

    aput v5, v3, p1

    const/16 p1, 0x11

    aput v5, v3, p1

    const/16 p1, 0x12

    aput v0, v3, p1

    const/16 p1, 0x13

    aput v5, v3, p1

    .line 122
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 128
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 129
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {v1, p0, v5, v5, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static adjustContrast(F)Landroid/graphics/ColorMatrix;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42fe0000    # 127.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    const/high16 v1, 0x42800000    # 64.0f

    div-float v1, p0, v1

    sub-float/2addr v1, v0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr p0, v3

    mul-float p0, p0, v2

    goto :goto_0

    :cond_0
    div-float v1, p0, v1

    const/high16 v2, 0x43010000    # 129.0f

    sub-float p0, v2, p0

    .line 100
    :goto_0
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    const/4 v4, 0x4

    aput p0, v3, v4

    const/4 v4, 0x5

    aput v5, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v5, v3, v4

    const/16 v4, 0x8

    aput v5, v3, v4

    const/16 v4, 0x9

    aput p0, v3, v4

    const/16 v4, 0xa

    aput v5, v3, v4

    const/16 v4, 0xb

    aput v5, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    const/16 v1, 0xd

    aput v5, v3, v1

    const/16 v1, 0xe

    aput p0, v3, v1

    const/16 p0, 0xf

    aput v5, v3, p0

    const/16 p0, 0x10

    aput v5, v3, p0

    const/16 p0, 0x11

    aput v5, v3, p0

    const/16 p0, 0x12

    aput v0, v3, p0

    const/16 p0, 0x13

    aput v5, v3, p0

    .line 101
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    return-object v2
.end method

.method public static adjustImage(Landroid/graphics/Bitmap;F)Landroid/graphics/ColorMatrix;
    .locals 5

    .line 159
    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v0, v3

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/16 v1, -0xfe

    int-to-float v1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v4, v0, v3

    const/16 v3, 0x8

    aput v4, v0, v3

    const/16 v3, 0x9

    aput v1, v0, v3

    const/16 v3, 0xa

    aput v4, v0, v3

    const/16 v3, 0xb

    aput v4, v0, v3

    const/16 v3, 0xc

    aput v2, v0, v3

    const/16 v2, 0xd

    aput v4, v0, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    .line 162
    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 168
    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 169
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-object p0
.end method

.method public static adjustLum(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 64
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {v3, p1, p1, p1, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 68
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 69
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static adjustSaturation(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 81
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {v3, p1, p1, p1, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 85
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 86
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static applyContrastEffect(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 19

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    add-double v5, p1, v3

    div-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 460
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_6

    move-object/from16 v8, p0

    .line 466
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 467
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 469
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x406fe00000000000L    # 255.0

    div-double/2addr v11, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v11, v15

    mul-double v11, v11, v3

    add-double/2addr v11, v15

    mul-double v11, v11, v13

    double-to-int v11, v11

    const/16 v12, 0xff

    if-gez v11, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :cond_0
    if-le v11, v12, :cond_1

    const/16 v11, 0xff

    .line 477
    :cond_1
    :goto_2
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v5

    move/from16 v17, v0

    move/from16 v18, v1

    int-to-double v0, v5

    div-double/2addr v0, v13

    sub-double/2addr v0, v15

    mul-double v0, v0, v3

    add-double/2addr v0, v15

    mul-double v0, v0, v13

    double-to-int v0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    if-le v0, v12, :cond_3

    const/16 v0, 0xff

    .line 485
    :cond_3
    :goto_3
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v8, v13

    sub-double/2addr v8, v15

    mul-double v8, v8, v3

    add-double/2addr v8, v15

    mul-double v8, v8, v13

    double-to-int v1, v8

    if-gez v1, :cond_4

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    if-le v1, v12, :cond_5

    goto :goto_4

    :cond_5
    move v12, v1

    .line 494
    :goto_4
    invoke-static {v10, v11, v0, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v6, v7, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    goto :goto_1

    :cond_6
    move/from16 v17, v0

    move/from16 v18, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public static applyGammaEffect(Landroid/graphics/Bitmap;DDD)Landroid/graphics/Bitmap;
    .locals 19

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_0

    int-to-double v9, v8

    const-wide v11, 0x406fe00000000000L    # 255.0

    div-double/2addr v9, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v15, v4

    div-double v3, v13, p1

    .line 351
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v3, v3, v16

    double-to-int v3, v3

    const/16 v4, 0xff

    .line 350
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v15, v8

    move/from16 v18, v8

    div-double v7, v13, p3

    .line 353
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v11

    add-double v7, v7, v16

    double-to-int v7, v7

    .line 352
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v5, v18

    div-double v13, v13, p5

    .line 355
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v11

    add-double v7, v7, v16

    double-to-int v7, v7

    .line 354
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v6, v18

    add-int/lit8 v8, v18, 0x1

    move-object v4, v15

    const/16 v3, 0x100

    goto :goto_0

    :cond_0
    move-object v15, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_1

    move-object/from16 v8, p0

    .line 362
    invoke-virtual {v8, v4, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 363
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 365
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    aget v11, v15, v11

    .line 366
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    aget v12, v5, v12

    .line 367
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    aget v9, v6, v9

    .line 369
    invoke-static {v10, v11, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v0, v4, v7, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static applyGaussianBlurEffect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    .line 435
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 440
    new-instance v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;

    invoke-direct {v2, v0}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;-><init>(I)V

    .line 441
    invoke-virtual {v2, v1}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->applyConfig([[D)V

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 442
    iput-wide v0, v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Factor:D

    const-wide/16 v0, 0x0

    .line 443
    iput-wide v0, v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Offset:D

    .line 444
    invoke-static {p0, v2}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->computeConvolution3x3(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/util/ConvolutionMatrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static applyMeanRemovalEffect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    .line 506
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 511
    new-instance v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;

    invoke-direct {v2, v0}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;-><init>(I)V

    .line 512
    invoke-virtual {v2, v1}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->applyConfig([[D)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 513
    iput-wide v0, v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Factor:D

    const-wide/16 v0, 0x0

    .line 514
    iput-wide v0, v2, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Offset:D

    .line 515
    invoke-static {p0, v2}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->computeConvolution3x3(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/util/ConvolutionMatrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x4022000000000000L    # 9.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static applySmoothEffect(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 5

    .line 556
    new-instance v0, Lcom/yalantis/ucrop/util/ConvolutionMatrix;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;-><init>(I)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 557
    invoke-virtual {v0, v1, v2}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->setAll(D)V

    .line 558
    iget-object v3, v0, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aput-wide p1, v3, v4

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    add-double/2addr p1, v3

    .line 559
    iput-wide p1, v0, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Factor:D

    .line 560
    iput-wide v1, v0, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->Offset:D

    .line 561
    invoke-static {p0, v0}, Lcom/yalantis/ucrop/util/ConvolutionMatrix;->computeConvolution3x3(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/util/ConvolutionMatrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static applyTintEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17

    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 632
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 633
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v0, p1

    int-to-double v0, v0

    const-wide v2, 0x400921f9f01b866eL    # 3.14159

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 638
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 639
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    double-to-int v0, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_6

    mul-int v5, v3, v8

    add-int/2addr v5, v4

    .line 644
    aget v6, v10, v5

    shr-int/lit8 v6, v6, 0x10

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 645
    aget v11, v10, v5

    shr-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v7

    .line 646
    aget v12, v10, v5

    and-int/2addr v12, v7

    mul-int/lit8 v13, v6, 0x46

    mul-int/lit8 v14, v11, 0x3b

    sub-int/2addr v13, v14

    mul-int/lit8 v15, v12, 0xb

    sub-int/2addr v13, v15

    .line 647
    div-int/lit8 v13, v13, 0x64

    mul-int/lit8 v16, v6, -0x1e

    mul-int/lit8 v11, v11, 0x29

    add-int v11, v16, v11

    sub-int/2addr v11, v15

    .line 648
    div-int/lit8 v11, v11, 0x64

    sub-int v16, v16, v14

    mul-int/lit8 v12, v12, 0x59

    add-int v16, v16, v12

    .line 649
    div-int/lit8 v16, v16, 0x64

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v14

    add-int/2addr v6, v15

    .line 650
    div-int/lit8 v6, v6, 0x64

    mul-int v11, v2, v16

    mul-int v12, v0, v13

    add-int/2addr v11, v12

    .line 651
    div-int/lit16 v11, v11, 0x100

    mul-int v16, v16, v0

    mul-int v13, v13, v2

    sub-int v12, v16, v13

    .line 652
    div-int/lit16 v12, v12, 0x100

    mul-int/lit8 v13, v11, -0x33

    mul-int/lit8 v14, v12, 0x13

    sub-int/2addr v13, v14

    .line 653
    div-int/lit8 v13, v13, 0x64

    add-int/2addr v11, v6

    if-gez v11, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :cond_0
    if-le v11, v7, :cond_1

    const/16 v11, 0xff

    :cond_1
    :goto_2
    add-int/2addr v13, v6

    if-gez v13, :cond_2

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    if-le v13, v7, :cond_3

    const/16 v13, 0xff

    :cond_3
    :goto_3
    add-int/2addr v6, v12

    if-gez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    if-le v6, v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    const/high16 v6, -0x1000000

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v6, v11

    shl-int/lit8 v11, v13, 0x8

    or-int/2addr v6, v11

    or-int/2addr v6, v7

    .line 660
    aput v6, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 664
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v11
.end method

.method public static boost(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 13

    .line 522
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 523
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 524
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    .line 531
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 532
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 533
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 534
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 535
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/16 v12, 0xff

    if-ne p1, v11, :cond_0

    int-to-float v8, v8

    add-float/2addr v10, p2

    mul-float v8, v8, v10

    float-to-int v8, v8

    if-le v8, v12, :cond_2

    const/16 v8, 0xff

    goto :goto_2

    :cond_0
    const/4 v11, 0x2

    if-ne p1, v11, :cond_1

    int-to-float v9, v9

    add-float/2addr v10, p2

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-le v9, v12, :cond_2

    const/16 v9, 0xff

    goto :goto_2

    :cond_1
    const/4 v11, 0x3

    if-ne p1, v11, :cond_2

    int-to-float v6, v6

    add-float/2addr v10, p2

    mul-float v6, v6, v10

    float-to-int v6, v6

    if-le v6, v12, :cond_2

    const/16 v6, 0xff

    .line 546
    :cond_2
    :goto_2
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static createSepiaToningEffect(Landroid/graphics/Bitmap;IDDD)Landroid/graphics/Bitmap;
    .locals 18

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 572
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    move-object/from16 v6, p0

    .line 585
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 587
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 588
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 589
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 590
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const-wide v11, 0x3fd3333333333333L    # 0.3

    int-to-double v13, v9

    mul-double v13, v13, v11

    const-wide v11, 0x3fe2e147ae147ae1L    # 0.59

    int-to-double v9, v10

    mul-double v9, v9, v11

    add-double/2addr v13, v9

    const-wide v9, 0x3fbc28f5c28f5c29L    # 0.11

    int-to-double v11, v7

    mul-double v11, v11, v9

    add-double/2addr v13, v11

    double-to-int v7, v13

    int-to-double v9, v7

    move/from16 v7, p1

    int-to-double v11, v7

    mul-double v13, v11, p2

    add-double/2addr v13, v9

    double-to-int v13, v13

    const/16 v14, 0xff

    if-le v13, v14, :cond_0

    const/16 v13, 0xff

    :cond_0
    mul-double v15, v11, p4

    move/from16 v17, v4

    add-double v3, v9, v15

    double-to-int v3, v3

    if-le v3, v14, :cond_1

    const/16 v3, 0xff

    :cond_1
    mul-double v11, v11, p6

    add-double/2addr v9, v11

    double-to-int v4, v9

    if-le v4, v14, :cond_2

    goto :goto_2

    :cond_2
    move v14, v4

    .line 611
    :goto_2
    invoke-static {v8, v13, v3, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    move/from16 v4, v17

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v6, p0

    move/from16 v7, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static doBrightness(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    .line 382
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 383
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 385
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 394
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 395
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 396
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 397
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 398
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v8, p1

    const/16 v10, 0xff

    if-le v8, v10, :cond_0

    const/16 v8, 0xff

    goto :goto_2

    :cond_0
    if-gez v8, :cond_1

    const/4 v8, 0x0

    :cond_1
    :goto_2
    add-int/2addr v9, p1

    if-le v9, v10, :cond_2

    const/16 v9, 0xff

    goto :goto_3

    :cond_2
    if-gez v9, :cond_3

    const/4 v9, 0x0

    :cond_3
    :goto_3
    add-int/2addr v6, p1

    if-le v6, v10, :cond_4

    goto :goto_4

    :cond_4
    if-gez v6, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    move v10, v6

    .line 423
    :goto_4
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public static handleImageBlack(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 215
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 217
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    .line 220
    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 226
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 227
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 230
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static handleImageEffect(Landroid/graphics/Bitmap;FFF)Landroid/graphics/Bitmap;
    .locals 6

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    .line 33
    invoke-virtual {v4, v5, p1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 34
    invoke-virtual {v4, v3, p1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    const/4 v3, 0x2

    .line 35
    invoke-virtual {v4, v3, p1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 36
    invoke-static {p1}, Lcom/yalantis/ucrop/util/ImageChangeHelper;->adjustContrast(F)Landroid/graphics/ColorMatrix;

    move-result-object p1

    .line 38
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 39
    invoke-virtual {v3, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 41
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {p2, p3, p3, p3, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 45
    new-instance p3, Landroid/graphics/ColorMatrix;

    invoke-direct {p3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 47
    invoke-virtual {p3, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 48
    invoke-virtual {p3, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 51
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 52
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static handleImagePixelsOldPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 190
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    .line 193
    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 200
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 201
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 204
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0

    :array_0
    .array-data 4
        0x3ec9374c    # 0.393f
        0x3f44dd2f    # 0.769f
        0x3e418937    # 0.189f
        0x0
        0x0
        0x3eb2b021    # 0.349f
        0x3f2f9db2    # 0.686f
        0x3e2c0831    # 0.168f
        0x0
        0x0
        0x3e8b4396    # 0.272f
        0x3f08b439    # 0.534f
        0x3e0624dd    # 0.131f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static ice(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 242
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 243
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_6

    mul-int v2, v0, v8

    add-int/2addr v2, v1

    .line 250
    aget v3, v10, v2

    .line 252
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 253
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 254
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x3

    .line 257
    div-int/lit8 v4, v4, 0x2

    if-gez v4, :cond_0

    neg-int v4, v4

    :cond_0
    const/16 v6, 0xff

    if-le v4, v6, :cond_1

    const/16 v4, 0xff

    :cond_1
    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x3

    .line 265
    div-int/lit8 v5, v5, 0x2

    if-gez v5, :cond_2

    neg-int v5, v5

    :cond_2
    if-le v5, v6, :cond_3

    const/16 v5, 0xff

    :cond_3
    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    .line 273
    div-int/lit8 v3, v3, 0x2

    if-gez v3, :cond_4

    neg-int v3, v3

    :cond_4
    if-le v3, v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v3

    .line 279
    :goto_2
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v10, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_7
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 283
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public static oldRemeber(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 296
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    mul-int v0, v8, v9

    .line 304
    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 305
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_3

    mul-int v3, v8, v1

    add-int/2addr v3, v2

    .line 308
    aget v4, v11, v3

    .line 309
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 310
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 311
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const-wide v12, 0x3fd926e978d4fdf4L    # 0.393

    int-to-double v14, v5

    mul-double v12, v12, v14

    const-wide v16, 0x3fe89ba5e353f7cfL    # 0.769

    int-to-double v5, v6

    mul-double v16, v16, v5

    add-double v12, v12, v16

    const-wide v16, 0x3fc83126e978d4feL    # 0.189

    move v7, v1

    int-to-double v0, v4

    mul-double v16, v16, v0

    add-double v12, v12, v16

    double-to-int v4, v12

    const-wide v12, 0x3fd65604189374bcL    # 0.349

    mul-double v12, v12, v14

    const-wide v16, 0x3fe5f3b645a1cac1L    # 0.686

    mul-double v16, v16, v5

    add-double v12, v12, v16

    const-wide v16, 0x3fc5810624dd2f1bL    # 0.168

    mul-double v16, v16, v0

    add-double v12, v12, v16

    double-to-int v12, v12

    const-wide v16, 0x3fd16872b020c49cL    # 0.272

    mul-double v14, v14, v16

    const-wide v16, 0x3fe116872b020c4aL    # 0.534

    mul-double v5, v5, v16

    add-double/2addr v14, v5

    const-wide v5, 0x3fc0c49ba5e353f8L    # 0.131

    mul-double v0, v0, v5

    add-double/2addr v14, v0

    double-to-int v0, v14

    const/16 v1, 0xff

    if-le v4, v1, :cond_0

    const/16 v4, 0xff

    :cond_0
    if-le v12, v1, :cond_1

    const/16 v12, 0xff

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0xff

    .line 315
    :cond_2
    invoke-static {v1, v4, v12, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 316
    aput v0, v11, v3

    add-int/lit8 v2, v2, 0x1

    move v1, v7

    goto :goto_1

    :cond_3
    move v7, v1

    add-int/lit8 v1, v7, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 320
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v10
.end method
