.class public Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageToneCurveFilter.java"


# static fields
.field public static final TONE_CURVE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"


# instance fields
.field private mBlueControlPoints:[Landroid/graphics/PointF;

.field private mBlueCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mGreenControlPoints:[Landroid/graphics/PointF;

.field private mGreenCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRedControlPoints:[Landroid/graphics/PointF;

.field private mRedCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRgbCompositeControlPoints:[Landroid/graphics/PointF;

.field private mRgbCompositeCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"

    .line 60
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 45
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/PointF;

    .line 62
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v1, v0

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 63
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 64
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 65
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 66
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)[I
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 312
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v2

    const/4 v3, 0x0

    aput v1, v5, v3

    .line 317
    const-class v6, D

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 318
    new-array v6, v1, [D

    .line 319
    aget-object v7, v5, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v2

    .line 321
    aget-object v7, v5, v3

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v3

    .line 322
    aget-object v7, v5, v3

    aput-wide v10, v7, v4

    const/4 v7, 0x1

    :goto_0
    add-int/lit8 v12, v1, -0x1

    if-ge v7, v12, :cond_1

    add-int/lit8 v12, v7, -0x1

    .line 325
    aget-object v12, v0, v12

    .line 326
    aget-object v13, v0, v7

    add-int/lit8 v14, v7, 0x1

    .line 327
    aget-object v15, v0, v14

    .line 329
    aget-object v16, v5, v7

    iget v8, v13, Landroid/graphics/Point;->x:I

    iget v9, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v8, v8, v18

    aput-wide v8, v16, v3

    .line 330
    aget-object v8, v5, v7

    iget v9, v15, Landroid/graphics/Point;->x:I

    iget v3, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v3

    int-to-double v10, v9

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    div-double v10, v10, v20

    aput-wide v10, v8, v2

    .line 331
    aget-object v3, v5, v7

    iget v8, v15, Landroid/graphics/Point;->x:I

    iget v9, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double v8, v8, v18

    aput-wide v8, v3, v4

    .line 332
    iget v3, v15, Landroid/graphics/Point;->y:I

    iget v8, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    iget v3, v15, Landroid/graphics/Point;->x:I

    iget v10, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v10

    int-to-double v10, v3

    div-double/2addr v8, v10

    iget v3, v13, Landroid/graphics/Point;->y:I

    iget v10, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v10

    int-to-double v10, v3

    iget v3, v13, Landroid/graphics/Point;->x:I

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v12

    int-to-double v12, v3

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    move v7, v14

    const/4 v3, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_1
    move-wide v7, v10

    .line 336
    aput-wide v7, v6, v3

    .line 337
    aput-wide v7, v6, v12

    .line 339
    aget-object v0, v5, v12

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v0, v2

    .line 341
    aget-object v0, v5, v12

    aput-wide v7, v0, v3

    .line 342
    aget-object v0, v5, v12

    aput-wide v7, v0, v4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 346
    aget-object v7, v5, v0

    aget-wide v8, v7, v3

    add-int/lit8 v3, v0, -0x1

    aget-object v7, v5, v3

    aget-wide v10, v7, v2

    div-double/2addr v8, v10

    .line 347
    aget-object v7, v5, v0

    aget-wide v10, v7, v2

    aget-object v12, v5, v3

    aget-wide v13, v12, v4

    mul-double v13, v13, v8

    sub-double/2addr v10, v13

    aput-wide v10, v7, v2

    .line 348
    aget-object v7, v5, v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    aput-wide v10, v7, v12

    .line 349
    aget-wide v10, v6, v0

    aget-wide v12, v6, v3

    mul-double v8, v8, v12

    sub-double/2addr v10, v8

    aput-wide v10, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x2

    :goto_2
    if-ltz v0, :cond_3

    .line 353
    aget-object v3, v5, v0

    aget-wide v7, v3, v4

    add-int/lit8 v3, v0, 0x1

    aget-object v9, v5, v3

    aget-wide v10, v9, v2

    div-double/2addr v7, v10

    .line 354
    aget-object v9, v5, v0

    aget-wide v10, v9, v2

    aget-object v12, v5, v3

    const/4 v13, 0x0

    aget-wide v14, v12, v13

    mul-double v14, v14, v7

    sub-double/2addr v10, v14

    aput-wide v10, v9, v2

    .line 355
    aget-object v9, v5, v0

    const-wide/16 v10, 0x0

    aput-wide v10, v9, v4

    .line 356
    aget-wide v14, v6, v0

    aget-wide v16, v6, v3

    mul-double v7, v7, v16

    sub-double/2addr v14, v7

    aput-wide v14, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 360
    aget-wide v7, v6, v3

    aget-object v4, v5, v3

    aget-wide v9, v4, v2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 200
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 205
    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    .line 206
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$2;

    invoke-direct {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 220
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 221
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 222
    aget-object v4, v0, v3

    .line 223
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 231
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_2

    .line 232
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_1
    if-ltz v0, :cond_2

    .line 233
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 239
    iget v1, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0xff

    if-ge v1, v2, :cond_3

    .line 240
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v2, :cond_3

    .line 241
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 248
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 250
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 252
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_4

    neg-float v3, v3

    .line 256
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 263
    invoke-direct/range {p0 .. p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    new-array v4, v2, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 275
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_5

    .line 282
    aget-object v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 283
    aget-object v8, v0, v7

    .line 285
    iget v9, v6, Landroid/graphics/Point;->x:I

    :goto_2
    iget v10, v8, Landroid/graphics/Point;->x:I

    if-ge v9, v10, :cond_4

    .line 286
    iget v10, v6, Landroid/graphics/Point;->x:I

    sub-int v10, v9, v10

    int-to-double v10, v10

    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v13, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v10

    .line 290
    iget v14, v8, Landroid/graphics/Point;->x:I

    iget v15, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    .line 292
    iget v3, v6, Landroid/graphics/Point;->y:I

    move/from16 v16, v2

    int-to-double v2, v3

    mul-double v2, v2, v12

    move-object/from16 v17, v6

    iget v6, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v18, v1

    int-to-double v0, v6

    mul-double v0, v0, v10

    add-double/2addr v2, v0

    mul-double v14, v14, v14

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr v14, v0

    mul-double v0, v12, v12

    mul-double v0, v0, v12

    sub-double/2addr v0, v12

    aget-wide v12, v4, v5

    mul-double v0, v0, v12

    mul-double v12, v10, v10

    mul-double v12, v12, v10

    sub-double/2addr v12, v10

    aget-wide v10, v4, v7

    mul-double v12, v12, v10

    add-double/2addr v0, v12

    mul-double v14, v14, v0

    add-double/2addr v2, v14

    const-wide/16 v0, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v6, v2, v10

    if-lez v6, :cond_2

    move-wide v2, v10

    goto :goto_3

    :cond_2
    cmpg-double v6, v2, v0

    if-gez v6, :cond_3

    move-wide v2, v0

    .line 300
    :cond_3
    :goto_3
    new-instance v0, Landroid/graphics/Point;

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v9, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    move-object/from16 v6, v17

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    move v5, v7

    goto :goto_1

    .line 305
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p1

    .line 306
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method

.method private readShort(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private updateToneCurveTexture()V
    .locals 1

    .line 167
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$1;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onDrawArraysPre()V
    .locals 3

    .line 93
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x84c3

    .line 94
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 95
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 96
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 3

    .line 71
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 72
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->getProgram()I

    move-result v0

    const-string v1, "toneCurveTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTextureUniformLocation:I

    const v0, 0x84c3

    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 75
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 76
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 77
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 78
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 79
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public onInitialized()V
    .locals 1

    .line 84
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInitialized()V

    .line 85
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setRgbCompositeControlPoints([Landroid/graphics/PointF;)V

    .line 86
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setRedControlPoints([Landroid/graphics/PointF;)V

    .line 87
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setGreenControlPoints([Landroid/graphics/PointF;)V

    .line 88
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setBlueControlPoints([Landroid/graphics/PointF;)V

    return-void
.end method

.method public setBlueControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 161
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    .line 162
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    .line 163
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    return-void
.end method

.method public setFromCurveFileInputStream(Ljava/io/InputStream;)V
    .locals 11

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 103
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const v2, 0x3b808081

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 110
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v5

    .line 112
    new-array v6, v5, [Landroid/graphics/PointF;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 119
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v8

    .line 120
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v9

    .line 122
    new-instance v10, Landroid/graphics/PointF;

    int-to-float v9, v9

    mul-float v9, v9, v2

    int-to-float v8, v8

    mul-float v8, v8, v2

    invoke-direct {v10, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    const/4 p1, 0x1

    .line 130
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    const/4 p1, 0x2

    .line 131
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    const/4 p1, 0x3

    .line 132
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setGreenControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 155
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 156
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    .line 157
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    return-void
.end method

.method public setRedControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 150
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    return-void
.end method

.method public setRgbCompositeControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 144
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    .line 145
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->updateToneCurveTexture()V

    return-void
.end method
