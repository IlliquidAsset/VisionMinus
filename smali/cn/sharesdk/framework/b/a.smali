.class public Lcn/sharesdk/framework/b/a;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static a:Lcn/sharesdk/framework/b/a;


# instance fields
.field private b:Lcn/sharesdk/framework/b/c;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcn/sharesdk/framework/b/a/e;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcn/sharesdk/framework/b/a;->e:Z

    .line 52
    new-instance v0, Lcn/sharesdk/framework/b/c;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    .line 54
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/b/a;
    .locals 1

    .line 44
    sget-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/sharesdk/framework/b/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    .line 47
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "bm_tmp"

    const-string v1, ".png"

    .line 349
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 351
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 352
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 353
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    .line 281
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 285
    :cond_1
    invoke-static {p1}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 288
    sget-object v2, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    if-ne p2, v2, :cond_2

    const/high16 v1, 0x44160000    # 600.0f

    .line 292
    :cond_2
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 293
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 294
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 295
    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 297
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 298
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v3, v4, :cond_3

    int-to-float v5, v4

    cmpl-float v5, v5, v1

    if-lez v5, :cond_3

    .line 301
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_0
    double-to-int p2, v3

    goto :goto_1

    :cond_3
    if-ge v3, v4, :cond_5

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 303
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_0

    :goto_1
    if-gtz p2, :cond_4

    const/4 p2, 0x1

    .line 312
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 313
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 315
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 316
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "bm_tmp2"

    .line 320
    invoke-static {v1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 321
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x50

    .line 322
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 323
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 324
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 326
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 305
    :cond_5
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 462
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 463
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 465
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 466
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-object p1

    .line 473
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 474
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p4

    if-gtz p4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string p4, "data"

    .line 478
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object p1

    .line 483
    :cond_5
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 484
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 485
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "surl"

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    .line 487
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 491
    :cond_6
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 492
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 494
    :goto_2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 496
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_2

    .line 500
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v0

    const-string p4, "> SERVER_SHORT_LINK_URL content after replace link ===  %s"

    invoke-virtual {p2, p4, p3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_8
    :goto_3
    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/b/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->d()Z

    move-result v0

    .line 230
    iget-object v1, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p1, Lcn/sharesdk/framework/b/b/b;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-object v0, p1, Lcn/sharesdk/framework/b/b/b;->d:Ljava/lang/String;

    .line 238
    iput-object v0, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private a(Lcn/sharesdk/framework/b/b/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->f()I

    move-result v0

    .line 244
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->d()Z

    move-result v1

    .line 245
    iget-object v2, p1, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    .line 248
    iget-object v4, v2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    .line 250
    iget-object v6, v2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    sget-object v7, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, v6, v7}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 254
    iget-object v7, v2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    .line 258
    iget-object v4, v2, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v2, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v0, v4, :cond_8

    .line 260
    iget-object v5, v2, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 261
    sget-object v6, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, v5, v6}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 263
    iget-object v6, v2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 267
    :cond_7
    iput-object v3, p1, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    :cond_8
    if-nez v1, :cond_9

    .line 271
    iput-object v3, p1, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 332
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "status"

    .line 336
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 340
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    return-object v0

    :cond_2
    const-string v1, "url"

    .line 345
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 398
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 399
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 405
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 407
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 408
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 409
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 411
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 p1, 0x2

    .line 413
    invoke-static {v1, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 522
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 526
    :cond_0
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 528
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 426
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 430
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p3, "<a[^>]*?href[\\s]*=[\\s]*[\"\']?([^\'\">]+?)[\'\"]?>"

    .line 436
    invoke-direct {p0, p1, p3, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 437
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p3

    :cond_2
    const-string p3, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+"

    .line 443
    invoke-direct {p0, p1, p3, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 444
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    return-object p1

    :catchall_0
    move-exception p2

    .line 450
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public a(Lcn/sharesdk/framework/b/b/c;)V
    .locals 5

    .line 197
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    instance-of v0, p1, Lcn/sharesdk/framework/b/b/b;

    if-eqz v0, :cond_1

    .line 203
    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/b/b/b;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/b;)V

    goto :goto_0

    .line 204
    :cond_1
    instance-of v0, p1, Lcn/sharesdk/framework/b/b/f;

    if-eqz v0, :cond_2

    .line 205
    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/b/b/f;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/f;)V

    .line 209
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 211
    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->l:Ljava/lang/String;

    .line 215
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 217
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->b()J

    move-result-wide v0

    .line 219
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p1, Lcn/sharesdk/framework/b/b/c;->e:J

    .line 222
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->a(Lcn/sharesdk/framework/b/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 224
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 559
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 561
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 509
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 513
    :cond_0
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 515
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public b()V
    .locals 10

    const-string v0, "res"

    .line 65
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0x5265c00

    .line 72
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3}, Lcn/sharesdk/framework/b/a/e;->l()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x5

    .line 76
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 77
    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 78
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gez v3, :cond_1

    if-ne v9, v7, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/c;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/b/a/e;->a(Z)V

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 89
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 92
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 569
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 10

    const-string v0, "assigns"

    const-string v1, "serpaths"

    const-string v2, "switchs"

    const-string v3, "timestamp"

    const-string v4, "status"

    .line 99
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    .line 100
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 103
    :cond_0
    iget-object v5, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v5}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v5, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcn/sharesdk/framework/b/a/e;->a(J)V

    .line 109
    iget-object v5, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v5}, Lcn/sharesdk/framework/b/c;->c()Ljava/util/HashMap;

    move-result-object v5

    .line 112
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, -0xc8

    if-ne v4, v6, :cond_2

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 121
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 124
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const-string v4, "service_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    const-string v3, "device"

    .line 131
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "share"

    .line 132
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "auth"

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "backflow"

    .line 134
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loginplus"

    .line 135
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "linkcard"

    .line 136
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    iget-object v9, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v9, v3}, Lcn/sharesdk/framework/b/a/e;->b(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/b/a/e;->d(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3, v6}, Lcn/sharesdk/framework/b/a/e;->c(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3, v7}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3, v8}, Lcn/sharesdk/framework/b/a/e;->e(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/b/a/e;->f(Ljava/lang/String;)V

    .line 148
    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 149
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_d

    const-string v2, "defhost"

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defport"

    .line 152
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ":"

    if-nez v4, :cond_7

    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "443"

    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "80"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 160
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/mob/MobSDK;->checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/sharesdk/framework/b/c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_6
    :goto_0
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-static {v2}, Lcom/mob/MobSDK;->checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/b/c;->c(Ljava/lang/String;)V

    .line 164
    :cond_7
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 166
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 167
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "host"

    .line 174
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "port"

    .line 175
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 180
    :cond_a
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/HashMap;)V

    goto :goto_5

    .line 169
    :cond_b
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    .line 187
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_d
    :goto_5
    return-void
.end method

.method public d()V
    .locals 6

    .line 360
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 361
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 364
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 371
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/framework/b/a/c;

    .line 375
    iget-object v4, v3, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 376
    iget-object v4, v3, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_1

    .line 378
    :cond_2
    iget-object v4, v3, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcn/sharesdk/framework/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_3

    .line 382
    iget-object v4, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    iget-object v3, v3, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 386
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public e()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 535
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->f()Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 537
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public f()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 547
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/b/a/e;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 551
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/b/a/e;->b(Z)V

    .line 552
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
