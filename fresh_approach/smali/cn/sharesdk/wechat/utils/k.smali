.class public Lcn/sharesdk/wechat/utils/k;
.super Ljava/lang/Object;
.source "WechatHelper.java"


# static fields
.field private static a:Lcn/sharesdk/wechat/utils/k;


# instance fields
.field private b:Lcn/sharesdk/wechat/utils/i;

.field private c:Lcn/sharesdk/wechat/utils/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/i;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 683
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    int-to-double v2, v0

    div-double/2addr v2, p2

    double-to-int v0, v2

    int-to-double v1, v1

    div-double/2addr v1, p2

    double-to-int p2, v1

    const/4 p3, 0x1

    .line 689
    invoke-static {p1, v0, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcn/sharesdk/wechat/utils/k;
    .locals 1

    .line 37
    sget-object v0, Lcn/sharesdk/wechat/utils/k;->a:Lcn/sharesdk/wechat/utils/k;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcn/sharesdk/wechat/utils/k;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/k;-><init>()V

    sput-object v0, Lcn/sharesdk/wechat/utils/k;->a:Lcn/sharesdk/wechat/utils/k;

    .line 40
    :cond_0
    sget-object v0, Lcn/sharesdk/wechat/utils/k;->a:Lcn/sharesdk/wechat/utils/k;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 327
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 328
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 329
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 330
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 331
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 332
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 334
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 335
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_0

    .line 337
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 338
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x0

    .line 340
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 342
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 306
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    const-string v1, "/data/"

    .line 307
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0, p4}, Lcn/sharesdk/wechat/utils/k;->d(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    goto :goto_0

    .line 310
    :cond_0
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 313
    :goto_0
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 314
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_1

    .line 317
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 318
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    :cond_1
    const/4 p2, 0x0

    .line 320
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "img"

    .line 322
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 391
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 392
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 394
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 395
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 396
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 397
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 398
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 400
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 377
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 378
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 380
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 381
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 382
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 383
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 384
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "video"

    .line 386
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 362
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 363
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 364
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 366
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 367
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 368
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 369
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 370
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 372
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 347
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 348
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 349
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 351
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 352
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 353
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 354
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 355
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "music"

    .line 357
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 492
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 493
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 494
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 495
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 500
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 502
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 503
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 505
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 507
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 508
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/k;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 509
    iget p2, p0, Lcn/sharesdk/wechat/utils/k;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 511
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 512
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 513
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 514
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz p7, :cond_5

    .line 515
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_5

    .line 516
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 518
    iget-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_4

    .line 520
    iget-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p1, p1

    const/high16 p3, 0x20000

    if-gt p1, p3, :cond_3

    goto :goto_2

    .line 521
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p2, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const-string p1, "webpage"

    .line 524
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 529
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 530
    iget v1, p0, Lcn/sharesdk/wechat/utils/k;->g:I

    iput v1, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 531
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 532
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "@app"

    if-nez p2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 533
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_0

    .line 535
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 538
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const-string p2, "\\?"

    .line 540
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    const/4 v1, 0x0

    if-le p4, p3, :cond_1

    .line 541
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html?"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 543
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 545
    :goto_1
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 546
    iget-boolean p2, p0, Lcn/sharesdk/wechat/utils/k;->f:Z

    iput-boolean p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    .line 547
    iget p2, p0, Lcn/sharesdk/wechat/utils/k;->g:I

    iput p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 549
    :cond_2
    new-instance p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 550
    iput-object p5, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 551
    iput-object v0, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 552
    iput-object p6, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 553
    invoke-direct {p0, p1, p7, p3}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "webpage"

    .line 554
    invoke-direct {p0, p2, p1, p8, p9}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 724
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".wxapi.WXEntryActivity"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 730
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 733
    const-class v2, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not extend from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 742
    :cond_0
    new-instance v0, Lcn/sharesdk/wechat/utils/d;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/d;-><init>()V

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/d;->d:Ljava/lang/String;

    .line 744
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 745
    iput p3, v0, Lcn/sharesdk/wechat/utils/d;->b:I

    .line 747
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/k;->c:Lcn/sharesdk/wechat/utils/j;

    .line 749
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of p1, p1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    .line 752
    iget-object p2, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {p2, v0, p1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/l;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 559
    new-instance v0, Lcn/sharesdk/wechat/utils/h$a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/h$a;-><init>()V

    .line 560
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/h$a;->a:Ljava/lang/String;

    .line 561
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/h$a;->b:Ljava/lang/String;

    .line 562
    iget p1, p0, Lcn/sharesdk/wechat/utils/k;->g:I

    iput p1, v0, Lcn/sharesdk/wechat/utils/h$a;->c:I

    .line 563
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/l;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 293
    new-instance v0, Lcn/sharesdk/wechat/utils/WXTextObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXTextObject;-><init>()V

    .line 294
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXTextObject;->text:Ljava/lang/String;

    .line 296
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 297
    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 298
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 299
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string p1, "text"

    .line 301
    invoke-direct {p0, v1, p1, p3, p4}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 650
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 654
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x64

    .line 655
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 656
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 657
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 658
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 660
    array-length v1, p1

    const v2, 0x8000

    if-eqz p4, :cond_0

    const/high16 v2, 0x20000

    :cond_0
    :goto_0
    if-le v1, v2, :cond_1

    int-to-double v3, v1

    int-to-double v5, v2

    div-double/2addr v3, v5

    .line 667
    invoke-direct {p0, p2, v3, v4}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 669
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 670
    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 671
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 672
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 673
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 674
    array-length v1, p1

    goto :goto_0

    :cond_1
    return-object p1

    .line 651
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 649
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 641
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 642
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 629
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 634
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 635
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)[B

    move-result-object p1

    return-object p1

    .line 631
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 595
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    const/4 v1, 0x0

    .line 596
    invoke-direct {p0, p1, p4, v1}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    .line 597
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    .line 599
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 600
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 601
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 602
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 603
    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 605
    invoke-direct {p0, p4, p1, p5, p6}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 581
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 582
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 584
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 585
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 586
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 587
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const/4 p2, 0x0

    .line 588
    invoke-direct {p0, p1, p4, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "emoji"

    .line 590
    invoke-direct {p0, v1, p1, p5, p6}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 426
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 427
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 429
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 430
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 431
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 432
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 433
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 434
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 436
    iget-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "webpage"

    .line 443
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 405
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 406
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 408
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 409
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 410
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 411
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_2

    .line 412
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 413
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 414
    iget-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "checkArgs fail, thumbData is too large: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "webpage"

    .line 421
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 463
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 464
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 465
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 467
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 468
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 469
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 470
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 471
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 473
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 448
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 449
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 450
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 452
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 453
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 454
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 455
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 456
    invoke-direct {p0, p1, p6, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "appdata"

    .line 458
    invoke-direct {p0, p4, p1, p7, p8}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 567
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 568
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 570
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 571
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 572
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 573
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 574
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "filedata"

    .line 576
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 478
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 479
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 481
    new-instance p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {p4}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 482
    iput-object p2, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 483
    iput-object p3, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 484
    iput-object v0, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    const/4 p2, 0x0

    .line 485
    invoke-direct {p0, p1, p5, p2}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    iput-object p1, p4, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string p1, "filedata"

    .line 487
    invoke-direct {p0, p4, p1, p6, p7}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    return-void
.end method

.method private d(Ljava/lang/String;)[B
    .locals 4

    .line 610
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 611
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 613
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 615
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 616
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 619
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 620
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 621
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 623
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcn/sharesdk/wechat/utils/k;->g:I

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/k;->c:Lcn/sharesdk/wechat/utils/j;

    .line 69
    new-instance p1, Lcn/sharesdk/wechat/utils/a;

    invoke-direct {p1}, Lcn/sharesdk/wechat/utils/a;-><init>()V

    const-string v0, "snsapi_userinfo"

    .line 70
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    const-string v0, "sharesdk_wechat_auth"

    .line 71
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/l;Z)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/j;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/j;->b()Lcn/sharesdk/framework/Platform;

    move-result-object p1

    .line 83
    const-class v0, Ljava/lang/Integer;

    const-string v1, "scene"

    invoke-virtual {p2, v1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    goto :goto_0

    :cond_0
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 87
    :goto_0
    new-instance v1, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/e;-><init>()V

    const-string v2, "com.tencent.mm"

    .line 88
    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p2, p1}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 91
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x9

    .line 92
    invoke-interface {p3, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcn/sharesdk/wechat/utils/k;->f:Z

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    .locals 2

    .line 698
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/k;->c:Lcn/sharesdk/wechat/utils/j;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/j;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/sharesdk/wechat/utils/j;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v1

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v2

    .line 99
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/wechat/utils/k;->e()I

    move-result v4

    const v5, 0x25000001

    if-ge v4, v5, :cond_0

    const/4 v3, 0x4

    .line 103
    :cond_0
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v9

    .line 106
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    .line 108
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 109
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 112
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getExtInfo()Ljava/lang/String;

    move-result-object v13

    const-string v1, "checkArgs fail, UserName or Path is invalid"

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v2, :cond_25

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 285
    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 274
    :pswitch_1
    iget-object v3, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    iget-object v1, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    invoke-direct {v11, v0, v1}, Lcn/sharesdk/wechat/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-interface {v2, v0, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_2
    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v9, v3, :cond_8

    const/4 v3, 0x2

    if-eq v9, v3, :cond_7

    .line 253
    iget-object v3, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 258
    :cond_3
    invoke-virtual {v0, v5, v15}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_4

    .line 260
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 261
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_4
    if-eqz v10, :cond_5

    .line 262
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v8, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_5
    if-eqz v14, :cond_6

    .line 264
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 265
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 268
    :cond_6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v11, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    iget-object v5, v11, Lcn/sharesdk/wechat/utils/k;->e:Ljava/lang/String;

    const-string v8, ""

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 252
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_WXMINIPROGRAM"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_8
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SAHRE_WXMINIPROGRAM"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x1

    if-eq v9, v0, :cond_d

    const/4 v0, 0x2

    if-eq v9, v0, :cond_c

    if-eqz v8, :cond_9

    .line 234
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 235
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_9
    if-eqz v14, :cond_a

    .line 236
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 237
    new-instance v12, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v12}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 238
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v15, "images"

    invoke-virtual/range {v12 .. v17}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_a
    if-eqz v10, :cond_b

    .line 242
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 243
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 245
    :cond_b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 231
    :cond_c
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_EMOJI"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/4 v0, 0x1

    if-eq v9, v0, :cond_11

    if-eqz v8, :cond_e

    .line 216
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 217
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_e
    if-eqz v10, :cond_f

    .line 218
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 219
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v14, :cond_10

    .line 220
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 221
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 224
    :cond_10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 213
    :cond_11
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SHARE_FILE"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/4 v0, 0x1

    if-eq v9, v0, :cond_16

    const/4 v0, 0x2

    if-eq v9, v0, :cond_15

    if-eqz v8, :cond_12

    .line 200
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 201
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v13

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_12
    if-eqz v10, :cond_13

    .line 202
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 203
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v13

    move-object v7, v10

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_13
    if-eqz v14, :cond_14

    .line 204
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 205
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v13

    move-object v7, v0

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 208
    :cond_14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v13

    move-object v7, v0

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 197
    :cond_15
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_16
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_6
    invoke-virtual {v0, v5, v15}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_17

    .line 168
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 169
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v10, :cond_18

    .line 170
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 171
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_18
    if-eqz v14, :cond_19

    .line 172
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 173
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 176
    :cond_19
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 150
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1, v15}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v15

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v8, :cond_1a

    .line 154
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 155
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_1a
    if-eqz v10, :cond_1b

    .line 156
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 157
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v10

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_1b
    if-eqz v14, :cond_1c

    .line 158
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 159
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 162
    :cond_1c
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 180
    :pswitch_8
    invoke-virtual {v0, v5, v15}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_1d

    .line 182
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 183
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_1d
    if-eqz v10, :cond_1e

    .line 184
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 185
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v10

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_1e
    if-eqz v14, :cond_1f

    .line 186
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    .line 190
    :cond_1f
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz v8, :cond_20

    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 119
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_20
    if-eqz v10, :cond_21

    .line 120
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 121
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/j;)V

    goto/16 :goto_2

    :cond_21
    if-eqz v14, :cond_24

    .line 122
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    .line 123
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_23

    .line 135
    :cond_22
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "when share iamge wechat that create nomedia catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 144
    :cond_23
    :goto_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto :goto_2

    .line 146
    :cond_24
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/wechat/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    goto :goto_2

    :pswitch_a
    move-object/from16 v1, p1

    .line 115
    invoke-direct {v11, v6, v7, v9, v1}, Lcn/sharesdk/wechat/utils/k;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/j;)V

    :cond_25
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/k;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/i;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/i;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 694
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/i;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/k;->b:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/i;->c()Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 4

    .line 711
    new-instance v0, Lcn/sharesdk/wechat/friends/Wechat;

    invoke-direct {v0}, Lcn/sharesdk/wechat/friends/Wechat;-><init>()V

    invoke-virtual {v0}, Lcn/sharesdk/wechat/friends/Wechat;->isClientValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 715
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x80

    .line 716
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.mm.BuildInfo.OPEN_SDK_VERSION"

    .line 717
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method
