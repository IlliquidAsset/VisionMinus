.class public Lcn/sharesdk/sina/weibo/h;
.super Lcn/sharesdk/framework/e;
.source "Weibo.java"


# static fields
.field private static b:Lcn/sharesdk/sina/weibo/h;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/b;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    const-string p1, "follow_app_official_microblog"

    .line 67
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->g:[Ljava/lang/String;

    .line 79
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method public static declared-synchronized a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;
    .locals 2

    const-class v0, Lcn/sharesdk/sina/weibo/h;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcn/sharesdk/sina/weibo/h;->b:Lcn/sharesdk/sina/weibo/h;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcn/sharesdk/sina/weibo/h;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/h;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v1, Lcn/sharesdk/sina/weibo/h;->b:Lcn/sharesdk/sina/weibo/h;

    .line 74
    :cond_0
    sget-object p0, Lcn/sharesdk/sina/weibo/h;->b:Lcn/sharesdk/sina/weibo/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 4

    .line 259
    new-instance v0, Lcn/sharesdk/sina/weibo/f;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/f;-><init>()V

    .line 260
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 262
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/sina/weibo/f;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/h;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 474
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/statuses/user_timeline.json"

    const-string v1, "/2/statuses/user_timeline.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 484
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 603
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 604
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 605
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 606
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v2, "source"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 611
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_4

    .line 615
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 616
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object p4, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 617
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-direct {v1, v2, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p4, v1

    goto :goto_1

    :cond_3
    move-object v4, p4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    :try_start_0
    const-string p3, "GET"

    .line 624
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 625
    new-instance p2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {p2, p1, v3, v0, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p3, "POST"

    .line 626
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 627
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 630
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_7

    .line 632
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 633
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 11

    .line 266
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 275
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 278
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    .line 280
    :try_start_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "http"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "/data/"

    .line 289
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "images"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 294
    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 300
    :cond_2
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_3
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageArray([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 305
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 309
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 311
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 316
    :cond_5
    new-instance v0, Lcn/sharesdk/sina/weibo/h$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/h$2;-><init>(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 338
    new-instance p2, Lcn/sharesdk/sina/weibo/a;

    invoke-direct {p2}, Lcn/sharesdk/sina/weibo/a;-><init>()V

    .line 339
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcn/sharesdk/sina/weibo/a;->a(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2, p1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 341
    invoke-virtual {p2, v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 342
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcn/sharesdk/sina/weibo/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void

    .line 113
    :cond_0
    new-instance p2, Lcn/sharesdk/sina/weibo/h$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/sina/weibo/h$1;-><init>(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, p2}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/h;->d:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    array-length v0, p1

    if-lez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->g:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 9

    const-string v0, "remind_in"

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v4, "client_id"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/h;->d:Ljava/lang/String;

    const-string v4, "client_secret"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    const-string v4, "redirect_uri"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "https://api.weibo.com/oauth2/access_token"

    const/4 v3, 0x0

    .line 183
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    const-string v6, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result v7

    invoke-virtual {v5, v2, v1, v6, v7}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "error"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "error_code"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 194
    :cond_2
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "uid"

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "expires_in"

    .line 196
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access_token"

    .line 197
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 203
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 207
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v3
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->d:Ljava/lang/String;

    const-string v3, "client_secret"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    const-string v3, "redirect_uri"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/oauth2/access_token"

    const-string v3, "/oauth2/access_token"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result v0

    invoke-static {v3, v0}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    return-object p1
.end method

.method public b(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 501
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 505
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 510
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cursor"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/friends.json"

    const-string v1, "/2/friendships/friends.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 520
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3

    .line 347
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->a:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_weibo_upload_content"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 354
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 358
    :cond_2
    :goto_1
    new-instance v0, Lcn/sharesdk/sina/weibo/h$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/h$3;-><init>(Lcn/sharesdk/sina/weibo/h;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 395
    new-instance p2, Lcn/sharesdk/sina/weibo/g;

    invoke-direct {p2}, Lcn/sharesdk/sina/weibo/g;-><init>()V

    .line 396
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcn/sharesdk/sina/weibo/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2, p1}, Lcn/sharesdk/sina/weibo/g;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 398
    invoke-virtual {p2, v0}, Lcn/sharesdk/sina/weibo/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 399
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcn/sharesdk/sina/weibo/g;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sina.weibo"

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sina.weibog3"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public c(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 538
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 542
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 547
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 549
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/friends/bilateral.json"

    const-string v1, "/2/friendships/friends/bilateral.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 557
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    return-void
.end method

.method public d(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 574
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 578
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 583
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cursor"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/followers.json"

    const-string v1, "/2/friendships/followers.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 593
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 225
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 230
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/2/users/show.json"

    const-string v3, "/2/users/show.json"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Z
    .locals 4

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_sdkVersion"

    const-string v3, "0031405000"

    .line 642
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_weibo_appPackage"

    .line 643
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "_weibo_appKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_weibo_flag"

    const v3, 0x20130329

    .line 645
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_sign"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 649
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->f:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/h;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/2/friendships/create.json"

    const-string v3, "/2/friendships/create.json"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 459
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;
    .locals 1

    .line 98
    new-instance v0, Lcn/sharesdk/sina/weibo/d;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/d;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://api.weibo.com/oauth2/default.html"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/d;)Lcn/sharesdk/framework/authorize/e;
    .locals 3

    .line 102
    new-instance v0, Lcn/sharesdk/sina/weibo/e;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    const p1, 0x80cd

    .line 103
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/e;->a(I)V

    .line 104
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/h;->g:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
