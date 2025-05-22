.class public Lcom/umeng/cconfig/UMRemoteConfig;
.super Ljava/lang/Object;
.source "UMRemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/cconfig/UMRemoteConfig$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static b:Z = false

.field private static final c:Ljava/lang/String; = "UMRemoteConfig"

.field private static final d:Ljava/lang/String; = "ucc"

.field private static final e:I = 0x3e8

.field private static f:Landroid/content/Context;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/pro/ae;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/pro/ae;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:I

.field private k:Lcom/umeng/cconfig/RemoteConfigSettings;

.field private l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;

.field private final m:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z_][a-zA-Z0-9_]{1,255}"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->a:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->i:Ljava/util/Map;

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/cconfig/UMRemoteConfig$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/umeng/cconfig/UMRemoteConfig;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 46
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 445
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    new-instance v0, Lcom/umeng/cconfig/UMRemoteConfig$1;

    invoke-direct {v0, p0}, Lcom/umeng/cconfig/UMRemoteConfig$1;-><init>(Lcom/umeng/cconfig/UMRemoteConfig;)V

    const-string v1, "ucc"

    invoke-virtual {p1, v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 9

    const-string v0, "[xmlLoad] xml load fail"

    const-string v1, "jessie"

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 330
    :try_start_0
    iget-object v4, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    if-eq p2, v3, :cond_6

    const/4 v8, 0x2

    if-ne p2, v8, :cond_0

    .line 336
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    if-ne p2, v8, :cond_3

    const-string p2, "entry"

    .line 338
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 339
    sget-object p2, Lcom/umeng/cconfig/UMRemoteConfig;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 340
    sget-object p2, Lcom/umeng/cconfig/UMRemoteConfig;->i:Ljava/util/Map;

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance p2, Lcom/umeng/analytics/pro/ae;

    invoke-direct {p2}, Lcom/umeng/analytics/pro/ae;-><init>()V

    .line 343
    invoke-virtual {p2, v6}, Lcom/umeng/analytics/pro/ae;->a(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, v7}, Lcom/umeng/analytics/pro/ae;->b(Ljava/lang/String;)V

    .line 345
    sget-object v5, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    move-object v7, v6

    .line 350
    :cond_1
    sget-object p2, Lcom/umeng/cconfig/UMRemoteConfig;->i:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v5, 0x3e8

    if-le p2, v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x4

    if-ne p2, v8, :cond_5

    const-string p2, "key"

    .line 357
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 358
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string p2, "value"

    .line 359
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 360
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 334
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    :cond_6
    :goto_2
    :try_start_1
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    :goto_3
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    :try_start_2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 367
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :try_start_3
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    :try_start_4
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 365
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    :try_start_5
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 373
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/af;)V
    .locals 14

    const-string v0, "g"

    const-string v1, "e"

    const-string v2, "v"

    const-string v3, "[active] new config active false"

    const-string v4, "k"

    const-string v5, "jessie"

    if-eqz p1, :cond_6

    .line 383
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/af;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 385
    :try_start_0
    iget-object v8, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 387
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, p1, :cond_5

    .line 390
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 391
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v10, ""

    .line 394
    new-instance v12, Lcom/umeng/analytics/pro/ae;

    invoke-direct {v12}, Lcom/umeng/analytics/pro/ae;-><init>()V

    .line 395
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 396
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-virtual {v12, v10}, Lcom/umeng/analytics/pro/ae;->a(Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 400
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/umeng/analytics/pro/ae;->b(Ljava/lang/String;)V

    .line 402
    :cond_1
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 403
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/umeng/analytics/pro/ae;->c(Ljava/lang/String;)V

    .line 405
    :cond_2
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 406
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/umeng/analytics/pro/ae;->d(Ljava/lang/String;)V

    .line 408
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 409
    sget-object v10, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v6

    .line 412
    invoke-static {v5, v10}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 416
    :cond_5
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 417
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 418
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "[active] new config active success i"

    aput-object v0, p1, v6

    .line 419
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    :try_start_3
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v6

    .line 421
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    :goto_2
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_3
    iget-object v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 427
    :cond_6
    :try_start_4
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 428
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 429
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 430
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const-string p1, "[active] new config active success ii"

    .line 431
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 435
    iget-object v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_2
    :goto_4
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_5
    return-void
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    sput-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    return-void
.end method

.method public static getInstance()Lcom/umeng/cconfig/UMRemoteConfig;
    .locals 1

    .line 69
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig$a;->a()Lcom/umeng/cconfig/UMRemoteConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activeFetchConfig()V
    .locals 4

    .line 300
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ucc"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "remote config disable"

    aput-object v2, v0, v1

    .line 301
    invoke-static {v3, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "UMRemoteConfig did not init"

    aput-object v2, v0, v1

    .line 305
    invoke-static {v3, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 308
    :cond_1
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "can not be called in child process"

    aput-object v2, v0, v1

    .line 309
    invoke-static {v3, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 313
    :cond_2
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/ak;

    sget-object v1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ak;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ak;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 125
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    const-string v1, "ucc"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "remote config disable"

    aput-object v0, p1, v3

    .line 126
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 129
    :cond_0
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "UMRemoteConfig did not init"

    aput-object v0, p1, v3

    .line 130
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 133
    :cond_1
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "can not be called in child process"

    aput-object v0, p1, v3

    .line 134
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 139
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/analytics/pro/ae;

    if-eqz p1, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ae;->b()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ae;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ag;->a(Lcom/umeng/analytics/pro/ae;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "jessie"

    new-array v1, v4, [Ljava/lang/Object;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ablog] ablog params : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 148
    new-instance v0, Lcom/umeng/analytics/pro/ai;

    const-string v1, "https://pslog.umeng.com/ablog"

    invoke-direct {v0, v1, p1}, Lcom/umeng/analytics/pro/ai;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/umeng/analytics/pro/aj;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 158
    iget-object v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2
.end method

.method public handlerMessage(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 5

    const-string v0, "ts"

    const-string v1, "cc"

    const/4 v2, 0x0

    const-string v3, "ucc"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 213
    check-cast p2, Ljava/lang/String;

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 216
    :try_start_0
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 217
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 221
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 223
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 227
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 228
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, p3, p2, v0}, Lcom/umeng/analytics/pro/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aa;->e()Z

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "get new config success"

    aput-object p2, p1, v2

    .line 231
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->k:Lcom/umeng/cconfig/RemoteConfigSettings;

    if-eqz p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->k:Lcom/umeng/cconfig/RemoteConfigSettings;

    invoke-virtual {p1}, Lcom/umeng/cconfig/RemoteConfigSettings;->isAutoUpdateModeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;

    invoke-interface {p1}, Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;->onFetchComplete()V

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/cconfig/UMRemoteConfig;->activeFetchConfig()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 247
    iget-object p2, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 252
    :try_start_2
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 253
    check-cast p2, Ljava/lang/String;

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 256
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 257
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/umeng/analytics/pro/ag;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 263
    iget-object p2, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_1
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :cond_6
    const/4 p3, 0x3

    if-ne p1, p3, :cond_8

    .line 268
    :try_start_3
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 269
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 271
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    iget p2, p0, Lcom/umeng/cconfig/UMRemoteConfig;->j:I

    invoke-direct {p0, p1, p2}, Lcom/umeng/cconfig/UMRemoteConfig;->a(Landroid/content/Context;I)V

    .line 273
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aa;->d()Lcom/umeng/analytics/pro/af;

    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Lcom/umeng/cconfig/UMRemoteConfig;->a(Lcom/umeng/analytics/pro/af;)V

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "active new config success"

    aput-object p2, p1, v2

    .line 277
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->k:Lcom/umeng/cconfig/RemoteConfigSettings;

    if-eqz p1, :cond_7

    .line 280
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;

    if-eqz p1, :cond_7

    .line 281
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;

    invoke-interface {p1}, Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;->onActiveComplete()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 289
    iget-object p2, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_2
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_8
    :goto_4
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 169
    :try_start_0
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ucc"

    if-nez v0, :cond_0

    :try_start_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "remote config disable"

    aput-object v0, p1, v1

    .line 170
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    .line 182
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "can not be called in child process"

    aput-object v0, p1, v1

    .line 183
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 187
    :cond_3
    iget-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->k:Lcom/umeng/cconfig/RemoteConfigSettings;

    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "please set RemoteConfigSettings using UMRemoteConfig.getInstance().setConfigSettings"

    aput-object v0, p1, v1

    .line 188
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 193
    :cond_4
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    iget v0, p0, Lcom/umeng/cconfig/UMRemoteConfig;->j:I

    invoke-direct {p0, p1, v0}, Lcom/umeng/cconfig/UMRemoteConfig;->a(Landroid/content/Context;I)V

    .line 196
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aa;->d()Lcom/umeng/analytics/pro/af;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Lcom/umeng/cconfig/UMRemoteConfig;->a(Lcom/umeng/analytics/pro/af;)V

    .line 202
    sget-object p1, Lcom/umeng/cconfig/UMRemoteConfig;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/cconfig/UMRemoteConfig;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public declared-synchronized setConfigSettings(Lcom/umeng/cconfig/RemoteConfigSettings;)V
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    if-nez v0, :cond_0

    const-string p1, "ucc"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "remote config disable"

    aput-object v2, v0, v1

    .line 97
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 101
    :try_start_1
    iput-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->k:Lcom/umeng/cconfig/RemoteConfigSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaults(I)V
    .locals 3

    monitor-enter p0

    .line 84
    :try_start_0
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    if-nez v0, :cond_0

    const-string p1, "ucc"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "remote config disable"

    aput-object v2, v0, v1

    .line 85
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOnNewConfigfecthed(Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;)V
    .locals 3

    monitor-enter p0

    .line 110
    :try_start_0
    sget-boolean v0, Lcom/umeng/cconfig/UMRemoteConfig;->b:Z

    if-nez v0, :cond_0

    const-string p1, "ucc"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "remote config disable"

    aput-object v2, v0, v1

    .line 111
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    :try_start_1
    iput-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig;->l:Lcom/umeng/cconfig/listener/OnConfigStatusChangedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
