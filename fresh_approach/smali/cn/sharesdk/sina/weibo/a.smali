.class public Lcn/sharesdk/sina/weibo/a;
.super Lcom/mob/tools/FakeActivity;
.source "SinaActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcn/sharesdk/framework/Platform$ShareParams;

.field private e:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const-wide/32 v0, 0x200000

    .line 57
    iput-wide v0, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 444
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    int-to-double v2, v0

    div-double/2addr v2, p2

    double-to-int v0, v2

    int-to-double v1, v1

    div-double/2addr v1, p2

    double-to-int p2, v1

    const/4 p3, 0x1

    .line 450
    invoke-static {p1, v0, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_weibo_command_type"

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_transaction"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callbackId"

    const-wide/16 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->c()Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v1

    const-string v3, "_weibo_message_text"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "_weibo_message_text_extra"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/32 v3, 0x8000

    .line 104
    iput-wide v3, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    .line 105
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->d()Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;->checkArgs()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "_weibo_message_media"

    .line 107
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    iget-object v3, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    iget-object v1, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    const-string v3, "extra_key_defaulttext"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v1, "_weibo_message_media_extra"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    .line 117
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->f()Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v1

    const-string v2, "_weibo_message_multi_image"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 119
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->g()Lcom/sina/weibo/sdk/api/VideoSourceObject;

    move-result-object v1

    const-string v2, "_weibo_message_video_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-wide/32 v3, 0x200000

    .line 121
    iput-wide v3, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    .line 122
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->e()Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/ImageObject;->checkArgs()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "_weibo_message_image"

    .line 124
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "_weibo_message_image_extra"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_6
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-static {}, Lcn/sharesdk/sina/weibo/i;->a()Lcn/sharesdk/sina/weibo/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/sina/weibo/i;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    const-string v2, "com.sina.weibog3"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 135
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_7

    .line 136
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    .line 197
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    .line 192
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 187
    invoke-interface {p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 204
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/a;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->a()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 237
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 239
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_sdkVersion"

    const-string v1, "0031405000"

    .line 240
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_appPackage"

    .line 241
    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_weibo_appKey"

    .line 242
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x20130329

    const-string p3, "_weibo_flag"

    .line 243
    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    invoke-static {p1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_weibo_sign"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_weibo_transaction"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 248
    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "launchWeiboActivity intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", extra="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/16 p1, 0x2fd

    .line 252
    invoke-virtual {p0, v3, p1}, Lcn/sharesdk/sina/weibo/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 254
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    .line 231
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "launchWeiboActivity fail, invalid arguments"

    invoke-virtual {p1, p3, p2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 397
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 409
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    .line 406
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 262
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 415
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 419
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x55

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 421
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 422
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 423
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 425
    array-length v0, p1

    :goto_0
    int-to-long v2, v0

    .line 426
    iget-wide v4, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    int-to-double v2, v0

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 428
    invoke-direct {p0, p2, v2, v3}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 430
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 432
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 433
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 434
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 435
    array-length v0, p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 416
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is recycled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "checkArgs fail, thumbData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Lcom/sina/weibo/sdk/api/TextObject;
    .locals 2

    .line 266
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 267
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
.end method

.method private d()Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 3

    .line 272
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 273
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 281
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 287
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private e()Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 7

    .line 294
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 296
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    goto/16 :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    :try_start_1
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 304
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 306
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 311
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 313
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 318
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method private f()Lcom/sina/weibo/sdk/api/MultiImageObject;
    .locals 6

    .line 324
    new-instance v0, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>()V

    .line 325
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->identify:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->title:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->description:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->actionUrl:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->defaultText:Ljava/lang/String;

    .line 332
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    .line 337
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_3

    .line 343
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setImageList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 351
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    :goto_2
    return-object v0
.end method

.method private g()Lcom/sina/weibo/sdk/api/VideoSourceObject;
    .locals 8

    .line 358
    new-instance v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VideoSourceObject;-><init>()V

    .line 359
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->identify:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->title:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->description:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->actionUrl:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->defaultText:Ljava/lang/String;

    .line 366
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->thumbData:[B

    goto :goto_0

    .line 368
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->thumbData:[B

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 373
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "/data/"

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "videos"

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 380
    invoke-static {v2, v1}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v4

    .line 385
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    :cond_3
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 389
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 214
    iget-boolean p1, p0, Lcn/sharesdk/sina/weibo/a;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 143
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string p1, "sina activity requestCode = %s, resultCode = %s"

    .line 143
    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 146
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 4

    const/4 v0, 0x1

    .line 66
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const-wide/16 v1, 0x2bc

    .line 73
    new-instance v3, Lcn/sharesdk/sina/weibo/a$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/sina/weibo/a$1;-><init>(Lcn/sharesdk/sina/weibo/a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/a;->b:Z

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 157
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "onNewIntent ==>>"

    invoke-virtual {v2, v3, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "_weibo_appPackage"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_weibo_transaction"

    .line 160
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild appPackage is null"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWeiboResponse getCallingPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild intent _weibo_transaction is null"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 172
    :cond_1
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 174
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "handleWeiboResponse faild appPackage validateSign faild"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :cond_2
    const-string p1, "_weibo_resp_errcode"

    .line 178
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "_weibo_resp_errstr"

    .line 179
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/sina/weibo/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    return-void
.end method
