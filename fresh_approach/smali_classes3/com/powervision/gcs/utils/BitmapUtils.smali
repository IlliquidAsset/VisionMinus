.class public Lcom/powervision/gcs/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static bitmapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/powervision/gcs/utils/BitmapUtils;->bitmapToByte(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 49
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static compress(Ljava/lang/String;Ljava/lang/String;ZZJII)Landroid/graphics/Bitmap;
    .locals 7

    .line 259
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 260
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 262
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 263
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    .line 264
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x1

    .line 268
    :goto_0
    div-int v6, v2, v5

    if-le v6, p6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    :cond_0
    :goto_1
    div-int v2, v3, v5

    if-le v2, p7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-gtz v5, :cond_2

    const/4 v5, 0x1

    .line 279
    :cond_2
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    invoke-static {v0, v4, p6, p7}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;

    move-result-object p6

    if-eqz p3, :cond_3

    .line 284
    invoke-static {p6, v1, p4, p5}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;ZJ)Landroid/graphics/Bitmap;

    move-result-object p6

    :cond_3
    if-eqz p2, :cond_5

    .line 289
    invoke-static {p1}, Lcom/powervision/gcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    move-object p0, p1

    .line 293
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p6, p1}, Lcom/powervision/gcs/utils/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V

    :cond_5
    return-object p6
.end method

.method public static compressBimap(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 466
    invoke-static {p0, v0, p1, p2}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;ZJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;
    .locals 7

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v1

    .line 244
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p2
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;ZJ)Landroid/graphics/Bitmap;
    .locals 5

    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v3, v1

    cmp-long v1, v3, p2

    if-lez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 216
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    .line 219
    :cond_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p3, 0x0

    .line 220
    invoke-static {p2, p3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p2
.end method

.method public static compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    const-wide/32 v1, 0x100000

    .line 485
    invoke-static {p0, v0, v1, v2}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;ZJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 338
    invoke-static/range {v0 .. v5}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;ZJII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmap(Ljava/lang/String;ZJ)Landroid/graphics/Bitmap;
    .locals 8

    .line 440
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 441
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 442
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 443
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v6, v1, 0x2

    .line 444
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v7, v0, 0x2

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    .line 445
    invoke-static/range {v2 .. v7}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;ZJII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmap(Ljava/lang/String;ZJII)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 255
    invoke-static/range {v0 .. v7}, Lcom/powervision/gcs/utils/BitmapUtils;->compress(Ljava/lang/String;Ljava/lang/String;ZZJII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmapBig(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 395
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 396
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 397
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 398
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v1, v1, p1

    .line 399
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v0, v0, p1

    .line 400
    invoke-static {p0, v1, v0}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBitmapSmall(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 364
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 365
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 366
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 367
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, p1

    .line 368
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, p1

    .line 369
    invoke-static {p0, v1, v0}, Lcom/powervision/gcs/utils/BitmapUtils;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressImage(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-wide/32 v1, 0x100000

    .line 475
    invoke-static {p0, v0, v1, v2}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;II)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 326
    invoke-static/range {v0 .. v6}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;Ljava/lang/String;ZJII)V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    .line 455
    invoke-static {p0, v0, p1, p2}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 9

    .line 412
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 413
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 414
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 415
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v7, v1, 0x2

    .line 416
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v8, v0, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    .line 417
    invoke-static/range {v2 .. v8}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;Ljava/lang/String;ZJII)V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;Ljava/lang/String;ZJII)V
    .locals 8

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    .line 310
    invoke-static/range {v0 .. v7}, Lcom/powervision/gcs/utils/BitmapUtils;->compress(Ljava/lang/String;Ljava/lang/String;ZZJII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-static {p0, v0, p1, p2, p3}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;ZJII)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 315
    invoke-static/range {v0 .. v6}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;Ljava/lang/String;ZJII)V

    return-void
.end method

.method public static compressImageBig(Ljava/lang/String;I)V
    .locals 2

    .line 379
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 380
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 382
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v1, v1, p1

    .line 383
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v0, v0, p1

    .line 384
    invoke-static {p0, v1, v0}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;II)V

    return-void
.end method

.method public static compressImageSmall(Ljava/lang/String;I)V
    .locals 2

    .line 348
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 349
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 350
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 351
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, p1

    .line 352
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, p1

    .line 353
    invoke-static {p0, v1, v0}, Lcom/powervision/gcs/utils/BitmapUtils;->compressImage(Ljava/lang/String;II)V

    return-void
.end method

.method public static createBitmapThumbnail(Landroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;
    .locals 7

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p3, p3

    int-to-float v0, v3

    div-float/2addr p3, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 152
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    invoke-virtual {v5, p3, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 155
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDegress(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 515
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 516
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_0
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 497
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 498
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 499
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 501
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;ILjava/io/File;)V
    .locals 1

    .line 189
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 193
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 194
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 195
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 172
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 173
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 175
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scaleImageTo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    int-to-float p1, p1

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/BitmapUtils;->scaleImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 120
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 125
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x1

    .line 127
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 129
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 132
    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method
