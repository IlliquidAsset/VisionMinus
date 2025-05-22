.class public Lcn/sharesdk/framework/utils/i;
.super Ljava/lang/Object;
.source "UrlToQRCode.java"


# static fields
.field private static volatile a:Lcn/sharesdk/framework/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10

    move v7, p1

    move v8, p2

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    :cond_0
    if-ltz v7, :cond_8

    if-gez v8, :cond_1

    goto/16 :goto_4

    .line 46
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    move-object v1, p3

    invoke-virtual {v6, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    move-object v1, p4

    invoke-virtual {v6, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    move-object v1, p5

    invoke-virtual {v6, v0, p5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :cond_4
    :try_start_1
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;-><init>()V

    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;IILjava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    move-result-object v0
    :try_end_1
    .catch Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;->printStackTrace()V

    move-object v0, v9

    :goto_0
    mul-int v1, v7, v8

    .line 68
    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_7

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_6

    .line 71
    invoke-virtual {v0, v4, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(II)Z

    move-result v5

    if-eqz v5, :cond_5

    mul-int v5, v3, v7

    add-int/2addr v5, v4

    .line 72
    aput p6, v2, v5

    goto :goto_3

    :cond_5
    mul-int v5, v3, v7

    add-int/2addr v5, v4

    .line 74
    aput p7, v2, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p1

    move v7, p1

    move v8, p2

    .line 80
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-object v9
.end method

.method public static a()Lcn/sharesdk/framework/utils/i;
    .locals 2

    .line 20
    const-class v0, Lcn/sharesdk/framework/utils/i;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/utils/i;->a:Lcn/sharesdk/framework/utils/i;

    if-nez v1, :cond_1

    .line 22
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/utils/i;->a:Lcn/sharesdk/framework/utils/i;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcn/sharesdk/framework/utils/i;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/i;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/utils/i;->a:Lcn/sharesdk/framework/utils/i;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 28
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    sget-object v0, Lcn/sharesdk/framework/utils/i;->a:Lcn/sharesdk/framework/utils/i;

    return-object v0

    :catchall_1
    move-exception v1

    .line 28
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
