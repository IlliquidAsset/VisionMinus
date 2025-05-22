.class public final Lorg/xutils/image/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final BITMAP_DECODE_MAX_WORKER:I

.field private static final GIF_HEADER:[B

.field private static final THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

.field private static final THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final bitmapDecodeLock:Ljava/lang/Object;

.field private static final bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final gifDecodeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    .line 46
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v0, "xUtils_img_thumb"

    .line 47
    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    sput-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    const/4 v1, 0x2

    .line 51
    :cond_0
    sput v1, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 3

    const/4 v0, 0x1

    if-gt p0, p2, :cond_0

    if-le p1, p3, :cond_3

    :cond_0
    if-le p0, p1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 315
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_1
    int-to-float v1, p0

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 317
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    mul-int p0, p0, p1

    int-to-float p0, p0

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    :goto_2
    mul-int p2, v0, v0

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v0
.end method

.method static clearCacheFiles()V
    .locals 1

    .line 59
    sget-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    return-void
.end method

.method public static cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8

    .line 367
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 370
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 371
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 374
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6, v6, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 376
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sub-int v0, v2, v0

    .line 377
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {v5, p0, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p0, v4

    :cond_1
    return-object p0
.end method

.method public static cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 10

    if-gtz p1, :cond_0

    return-object p0

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz p2, :cond_1

    .line 401
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v2, p2

    goto :goto_0

    :cond_1
    move p2, v0

    move v2, v1

    .line 404
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 405
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 408
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, p2

    int-to-float v8, v2

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p1

    .line 410
    invoke-virtual {v5, v6, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 411
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sub-int/2addr p2, v0

    .line 412
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float p2, v2

    invoke-virtual {v5, p0, p1, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, v4

    :cond_3
    return-object p0
.end method

.method public static cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 430
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    .line 437
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v2, v0

    div-float v3, p1, v2

    int-to-float p2, p2

    int-to-float v4, v1

    div-float v5, p2, v4

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v9, v3, v5

    if-lez v9, :cond_1

    div-float/2addr p2, v3

    sub-float p1, v4, p2

    div-float/2addr p1, v8

    float-to-int p1, p1

    add-float/2addr v4, p2

    div-float/2addr v4, v8

    float-to-int v1, v4

    move v4, p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    div-float/2addr p1, v5

    sub-float p2, v2, p1

    div-float/2addr p2, v8

    float-to-int p2, p2

    add-float/2addr v2, p1

    div-float/2addr v2, v8

    float-to-int v0, v2

    move v3, v5

    const/4 v4, 0x0

    .line 456
    :goto_0
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-int v5, v0, p2

    sub-int v6, v1, v4

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p2

    .line 459
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eq p1, p0, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 342
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 347
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 348
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eq v0, p0, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v0

    :cond_2
    return-object p0
.end method

.method public static decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez p1, :cond_1

    .line 161
    sget-object p1, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 163
    :cond_1
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p1, v0}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    :cond_3
    const-string v1, "cancelled during decode image"

    if-eqz p2, :cond_5

    .line 170
    :try_start_0
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 171
    :cond_4
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_5
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 176
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 177
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 178
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    .line 180
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 183
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getWidth()I

    move-result v7

    .line 186
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getHeight()I

    move-result v8

    .line 187
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isAutoRotate()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/image/ImageDecoder;->getRotateAngle(Ljava/lang/String;)I

    move-result v4

    .line 189
    div-int/lit8 v9, v4, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v3, :cond_6

    .line 190
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 191
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 194
    :cond_6
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v9

    if-nez v9, :cond_8

    if-lez v7, :cond_8

    if-lez v8, :cond_8

    .line 195
    div-int/lit8 v9, v4, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v3, :cond_7

    .line 196
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 197
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 199
    :cond_7
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 205
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v9

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v10

    .line 203
    invoke-static {v5, v6, v9, v10}, Lorg/xutils/image/ImageDecoder;->calculateSampleSize(IIII)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p2, :cond_a

    .line 207
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 208
    :cond_9
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_a
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "decode image error"

    if-eqz p0, :cond_18

    if-eqz p2, :cond_c

    .line 219
    :try_start_1
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    .line 220
    :cond_b
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    if-eqz v4, :cond_d

    .line 223
    invoke-static {p0, v4, v3}, Lorg/xutils/image/ImageDecoder;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_d
    if-eqz p2, :cond_f

    .line 225
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_4

    .line 226
    :cond_e
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_f
    :goto_4
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v4

    if-eqz v4, :cond_10

    if-lez v7, :cond_10

    if-lez v8, :cond_10

    .line 229
    invoke-static {p0, v7, v8, v3}, Lorg/xutils/image/ImageDecoder;->cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_10
    if-eqz p0, :cond_17

    if-eqz p2, :cond_12

    .line 238
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_5

    .line 239
    :cond_11
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCircular()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 242
    invoke-static {p0, v3}, Lorg/xutils/image/ImageDecoder;->cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_6

    .line 243
    :cond_13
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result p2

    if-lez p2, :cond_14

    .line 244
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result p2

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result p1

    invoke-static {p0, p2, p1, v3}, Lorg/xutils/image/ImageDecoder;->cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_6

    .line 245
    :cond_14
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 246
    invoke-static {p0, v3}, Lorg/xutils/image/ImageDecoder;->cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_15
    :goto_6
    if-eqz p0, :cond_16

    move-object v0, p0

    goto :goto_7

    .line 251
    :cond_16
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_17
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_18
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v0

    :catch_0
    move-exception p0

    .line 258
    throw p0

    :catch_1
    move-exception p0

    .line 256
    throw p0

    :cond_19
    :goto_8
    return-object v0
.end method

.method static decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_2

    .line 70
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    const-string p1, "cancelled during decode image"

    invoke-direct {p0, p1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isIgnoreGif()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lorg/xutils/image/ImageDecoder;->isGif(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    sget-object v1, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;

    move-result-object p1

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_a

    .line 81
    new-instance v0, Lorg/xutils/image/GifDrawable;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-direct {v0, p1, p0}, Lorg/xutils/image/GifDrawable;-><init>(Landroid/graphics/Movie;I)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    const/4 v1, 0x0

    .line 88
    :try_start_2
    sget-object v2, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 89
    :catchall_1
    :goto_1
    :try_start_3
    sget-object v3, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sget v4, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    if-lt v3, v4, :cond_5

    if-eqz p2, :cond_4

    .line 90
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v3, :cond_5

    .line 92
    :cond_4
    :try_start_4
    sget-object v3, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 94
    :catch_0
    :try_start_5
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    const-string p1, "cancelled during decode image"

    invoke-direct {p0, p1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_7

    .line 100
    :try_start_6
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 101
    :cond_6
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    const-string p1, "cancelled during decode image"

    invoke-direct {p0, p1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 105
    sget-object v2, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 107
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    invoke-static {p0, p1}, Lorg/xutils/image/ImageDecoder;->getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v0

    :goto_3
    if-nez v2, :cond_9

    .line 111
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 113
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 115
    sget-object p2, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/xutils/image/ImageDecoder$1;

    invoke-direct {v3, p0, p1, v2}, Lorg/xutils/image/ImageDecoder$1;-><init>(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 125
    :cond_9
    sget-object p0, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 127
    sget-object p0, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter p0

    .line 128
    :try_start_7
    sget-object p1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_a

    .line 133
    new-instance v0, Lorg/xutils/image/ReusableBitmapDrawable;

    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lorg/xutils/image/ReusableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_a
    :goto_4
    return-object v0

    :catchall_2
    move-exception p1

    .line 129
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :catchall_3
    move-exception p0

    .line 98
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_b

    .line 125
    sget-object p1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 127
    :cond_b
    sget-object p1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter p1

    .line 128
    :try_start_b
    sget-object p2, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 130
    throw p0

    :catchall_5
    move-exception p0

    .line 129
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :cond_c
    :goto_5
    return-object v0
.end method

.method public static decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 272
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 282
    :try_start_0
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    new-instance p0, Lorg/xutils/common/Callback$CancelledException;

    const-string p2, "cancelled during decode image"

    invoke-direct {p0, p2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    .line 287
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p2, "decode image error"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 293
    throw p0

    :catch_1
    move-exception p0

    .line 291
    throw p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static getRotateAngle(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 512
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 513
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    const/16 v0, 0xb4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private static getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 568
    :try_start_0
    sget-object v1, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 568
    invoke-virtual {v1, p0}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 570
    :try_start_1
    invoke-virtual {p0}, Lorg/xutils/cache/DiskCacheFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 572
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    .line 573
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 574
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 575
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 576
    invoke-virtual {p0}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    invoke-static {p0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 579
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 581
    :cond_0
    invoke-static {p0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p1

    invoke-static {p0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 582
    throw p1
.end method

.method public static isGif(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    const/4 p0, 0x3

    .line 143
    :try_start_1
    invoke-static {v1, v2, v3, p0}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object p0

    .line 144
    sget-object v0, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 146
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    throw p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_0

    .line 482
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 483
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 485
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eq p1, p0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, p1

    :cond_2
    return-object p0
.end method

.method private static saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 540
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-virtual {v0, p0}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 546
    :try_start_0
    sget-object p1, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {p1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    .line 548
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 549
    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p2, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 550
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 551
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_1

    .line 557
    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 558
    invoke-static {p0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    move-object p1, v0

    .line 554
    :goto_1
    :try_start_3
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 555
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 557
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_3
    move-exception p0

    .line 557
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 559
    throw p0
.end method
