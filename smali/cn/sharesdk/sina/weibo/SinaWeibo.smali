.class public Lcn/sharesdk/sina/weibo/SinaWeibo;
.super Lcn/sharesdk/framework/Platform;
.source "SinaWeibo.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/SinaWeibo;ILjava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/h;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 3

    .line 68
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/h;->c(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/h;->d()Z

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/h;->a([Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcn/sharesdk/sina/weibo/SinaWeibo$1;

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/sina/weibo/SinaWeibo$1;-><init>(Lcn/sharesdk/sina/weibo/SinaWeibo;Lcn/sharesdk/sina/weibo/h;)V

    .line 125
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->isSSODisable()Z

    move-result v1

    .line 89
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "error_code"

    .line 329
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v1

    .line 330
    invoke-virtual {v1, p1, p2, p4, p5}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 339
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    .line 341
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_1

    .line 342
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p3, p4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 349
    :cond_2
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_5

    .line 350
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_1

    .line 332
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 333
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 353
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 12

    const-string v0, "url"

    const-string v1, "error"

    .line 358
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v2

    .line 359
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/sina/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-boolean v3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->d:Z

    const/16 v4, 0x9

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcn/sharesdk/sina/weibo/h;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    :try_start_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcSummary()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcImage()Lorg/json/JSONObject;

    move-result-object v7

    .line 364
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcObjectType()Ljava/lang/String;

    move-result-object v8

    .line 365
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 366
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcCreateAt()Ljava/lang/String;

    move-result-object v10

    .line 367
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLcUrl()Ljava/lang/String;

    move-result-object v11

    .line 369
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v3

    .line 371
    invoke-virtual {v3}, Lcn/sharesdk/framework/b/a/e;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 374
    invoke-static {}, Lcn/sharesdk/sina/weibo/b;->a()Lcn/sharesdk/sina/weibo/b;

    move-result-object v5

    .line 375
    invoke-virtual/range {v5 .. v11}, Lcn/sharesdk/sina/weibo/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v5, :cond_0

    .line 381
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v2, p1, v0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 390
    invoke-static {}, Lcn/sharesdk/sina/weibo/c;->a()Lcn/sharesdk/sina/weibo/c;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/sharesdk/sina/weibo/c;->a(I)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v2, p1, v0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 396
    invoke-static {}, Lcn/sharesdk/sina/weibo/c;->a()Lcn/sharesdk/sina/weibo/c;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/sharesdk/sina/weibo/c;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 399
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 403
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v2, p1, v0}, Lcn/sharesdk/sina/weibo/h;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 405
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 515
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/16 v4, 0xa

    const-string v5, "type"

    const/4 v6, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    return-object v6

    :cond_0
    const-string v3, "FOLLOWERS"

    .line 521
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "FRIENDS"

    .line 524
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "FOLLOWING"

    .line 518
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "snsplat"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p0

    .line 532
    iget-object v5, v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "snsuid"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "current_cursor"

    .line 533
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v8, "total_number"

    .line 534
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    return-object v6

    :cond_3
    const-string v9, "users"

    .line 540
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    return-object v6

    .line 544
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 545
    check-cast v9, Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_5

    return-object v6

    .line 549
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    if-nez v11, :cond_6

    goto :goto_1

    .line 553
    :cond_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v13, "id"

    .line 554
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "screen_name"

    .line 555
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "nickname"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "avatar_hd"

    .line 556
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "icon"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "verified"

    .line 557
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    .line 558
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "1"

    const-string v15, "0"

    const-string v4, "secretType"

    if-eqz v13, :cond_7

    .line 560
    invoke-virtual {v12, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 562
    :cond_7
    invoke-virtual {v12, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v4, "verified_reason"

    .line 564
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "secret"

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gender"

    .line 566
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "m"

    .line 567
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 568
    invoke-virtual {v12, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const-string v6, "f"

    .line 569
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 570
    invoke-virtual {v12, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v6, "2"

    .line 572
    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://weibo.com/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "profile_url"

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "snsUserUrl"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "description"

    .line 575
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "resume"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "followers_count"

    .line 576
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "followerCount"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "friends_count"

    .line 577
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "favouriteCount"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "statuses_count"

    .line 578
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "shareCount"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "created_at"

    .line 579
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 580
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 581
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "snsregat"

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 585
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string v4, "nextCursor"

    const-string v6, "_true"

    const-string v7, "_false"

    const/16 v9, 0xa

    if-ne v9, v0, :cond_d

    const-string v0, "page_count"

    .line 592
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v5, 0x1

    mul-int v0, v0, v1

    if-lt v0, v8, :cond_c

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 597
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v5, v0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    if-lt v5, v8, :cond_e

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const-string v0, "list"

    .line 601
    invoke-virtual {v2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    .line 411
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 412
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p1, "id"

    .line 414
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 415
    iget-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v1, "original_pic"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    :cond_0
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 3

    const-string v0, "error_code"

    .line 129
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v1

    const/4 v2, 0x6

    .line 131
    :try_start_0
    invoke-virtual {v1, p1}, Lcn/sharesdk/sina/weibo/h;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    .line 150
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 2
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

    .line 452
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 455
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "nickname"

    invoke-virtual {p3, v0}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 458
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 462
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 464
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/sina/weibo/h;->c(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    if-nez p3, :cond_3

    return-object v1

    :cond_3
    const-string v0, "error_code"

    .line 469
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    const-string v0, "page_count"

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "current_cursor"

    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 475
    invoke-virtual {p0, p1, p3}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 477
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 2
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

    .line 484
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 487
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "nickname"

    invoke-virtual {p3, v0}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 490
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 494
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 496
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/sina/weibo/h;->d(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    const-string p3, "error_code"

    .line 501
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object v1

    :cond_4
    const-string p3, "current_cursor"

    .line 505
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xb

    .line 506
    invoke-virtual {p0, p2, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 508
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 2
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

    .line 422
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 425
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "nickname"

    invoke-virtual {p3, v0}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 428
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 432
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 434
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/sina/weibo/h;->b(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    const-string p3, "error_code"

    .line 439
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object v1

    :cond_4
    const-string p3, "current_cursor"

    .line 443
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 444
    invoke-virtual {p0, p2, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 446
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 3

    const-string v0, "error_code"

    .line 282
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 285
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    invoke-virtual {p3, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 288
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 289
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 291
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Both weibo id and screen_name are null"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    .line 296
    :cond_3
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v1

    .line 298
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/sina/weibo/h;->b(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 300
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 301
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v2, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 306
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_7

    .line 309
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_6

    .line 310
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    .line 317
    :cond_7
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_8

    .line 318
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 321
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 1

    const-string p1, "AppKey"

    .line 27
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    const-string p1, "AppSecret"

    .line 28
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    const-string p1, "RedirectUrl"

    .line 29
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    const-string p1, "ShareByAppClient"

    .line 30
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->d:Z

    return-void
.end method

.method public isClientValid()Z
    .locals 1

    .line 52
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/h;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 2

    const-string v0, "app_key"

    const-string v1, "AppKey"

    .line 46
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    .line 47
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    const-string v0, "redirect_uri"

    const-string v1, "RedirectUrl"

    .line 48
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 3

    const-string v0, "error_code"

    .line 159
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 162
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    invoke-virtual {p3, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 165
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 166
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Both weibo id and screen_name are null"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    .line 173
    :cond_3
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v1

    .line 175
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/sina/weibo/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 177
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v2, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 183
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_7

    .line 186
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_6

    .line 187
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    .line 194
    :cond_7
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_8

    .line 195
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 198
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 7

    const-string v0, "error_code"

    const-string v1, "gender"

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 206
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "nickname"

    if-eqz v4, :cond_1

    .line 210
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 212
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    .line 213
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both weibo id and screen_name are null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    .line 220
    :cond_3
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v2

    .line 222
    :try_start_0
    invoke-virtual {v2, p1}, Lcn/sharesdk/sina/weibo/h;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 224
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 230
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6

    .line 234
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    if-eqz v3, :cond_b

    .line 242
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    const-string v3, "avatar_hd"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "1"

    const-string v3, "0"

    const-string v5, "secretType"

    if-eqz v0, :cond_8

    .line 249
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v5, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "secret"

    const-string v6, "verified_reason"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "m"

    .line 256
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 257
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v3, "f"

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 259
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_a
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://weibo.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "profile_url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "followerCount"

    const-string v2, "followers_count"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "favouriteCount"

    const-string v2, "friends_count"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "shareCount"

    const-string v2, "statuses_count"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "created_at"

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 271
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsregat"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_c

    .line 274
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 277
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_c
    :goto_4
    return-void
.end method
