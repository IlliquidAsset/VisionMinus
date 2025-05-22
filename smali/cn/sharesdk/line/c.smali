.class public Lcn/sharesdk/line/c;
.super Ljava/lang/Object;
.source "LineImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeHelper;


# static fields
.field private static c:Lcn/sharesdk/line/c;


# instance fields
.field private a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private b:Lcn/sharesdk/framework/authorize/SSOListener;

.field private d:Lcn/sharesdk/line/b;

.field private e:Lcn/sharesdk/framework/a/b;

.field private f:Lcn/sharesdk/framework/Platform;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    .line 61
    invoke-virtual {p0, v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/a/b;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method public static a()Lcn/sharesdk/line/c;
    .locals 2

    .line 49
    sget-object v0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/line/c;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcn/sharesdk/line/c;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/line/c;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcn/sharesdk/line/c;

    invoke-direct {v1}, Lcn/sharesdk/line/c;-><init>()V

    sput-object v1, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/line/c;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/line/c;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/line/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/line/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/line/b;)V
    .locals 8

    .line 335
    invoke-virtual {p2}, Lcn/sharesdk/line/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object p2

    .line 337
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "mid"

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 339
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    .line 340
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    .line 341
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "token_type"

    .line 342
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 346
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line://msg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 326
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 330
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 388
    new-instance v0, Lcn/sharesdk/line/c$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/line/c$3;-><init>(Lcn/sharesdk/line/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcn/sharesdk/line/c$3;->start()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/a/b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    return-void
.end method

.method protected a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 138
    new-instance p1, Lcn/sharesdk/framework/authorize/g;

    invoke-direct {p1}, Lcn/sharesdk/framework/authorize/g;-><init>()V

    .line 139
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 140
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/line/c;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 158
    new-instance p2, Lcn/sharesdk/line/c$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/line/c$1;-><init>(Lcn/sharesdk/line/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, p2}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    :goto_0
    return-void
.end method

.method protected a(Lcn/sharesdk/framework/authorize/SSOListener;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lcn/sharesdk/line/c;->b:Lcn/sharesdk/framework/authorize/SSOListener;

    .line 145
    new-instance v0, Lcn/sharesdk/framework/authorize/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/d;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/d;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    .line 147
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    return-void
.end method

.method public a(Lcn/sharesdk/line/LineHandlerActivity;Landroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    .line 353
    iget-object p1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 354
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Illegal redirection from external application."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    const-string p1, "error"

    .line 357
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error_description"

    .line 358
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 363
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 364
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_2
    const-string p1, "code"

    .line 368
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 370
    new-instance p2, Lcn/sharesdk/line/c$2;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/line/c$2;-><init>(Lcn/sharesdk/line/c;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Lcn/sharesdk/line/c$2;->start()V

    :cond_3
    return-void
.end method

.method public a(Lcn/sharesdk/line/b;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/sharesdk/line/c;->d:Lcn/sharesdk/line/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/sharesdk/line/c;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/sharesdk/line/c;->g:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcn/sharesdk/line/c;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Lcn/sharesdk/framework/a/b;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/line/c;->i:Ljava/lang/String;

    const-string v2, "redirect_uri"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/line/c;->g:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/line/c;->h:Ljava/lang/String;

    const-string v2, "client_secret"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "https://api.line.me/oauth2/v2.1/token"

    .line 229
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    const-string v2, "/oauth2/v2.1/token"

    invoke-virtual {p0}, Lcn/sharesdk/line/c;->c()I

    move-result v3

    invoke-virtual {v1, p1, v0, v2, v3}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent://result#Intent;package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";scheme=lineauth;end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect_uri"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/line/c;->g:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "otp"

    invoke-direct {p1, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Lcom/mob/tools/network/KVPair;

    sget-object p2, Lcn/sharesdk/line/utils/a;->a:Lcn/sharesdk/line/utils/a;

    invoke-virtual {p2}, Lcn/sharesdk/line/utils/a;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "id_token_key_type"

    invoke-direct {p1, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "client_version"

    const-string v1, "LINE SDK Android v5.0.0"

    invoke-direct {p1, p2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "https://api.line.me/oauth2/v2.1/token"

    .line 203
    :try_start_0
    iget-object p2, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    const-string v1, "/oauth2/v2.1/token"

    invoke-virtual {p0}, Lcn/sharesdk/line/c;->c()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Lcn/sharesdk/line/b;)Z
    .locals 7

    .line 259
    invoke-virtual {p1}, Lcn/sharesdk/line/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "refresh_token"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "refreshToken"

    invoke-direct {v1, v4, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Line-ChannelToken"

    invoke-direct {v1, v2, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "https://api.line.me/v1/oauth/accessToken"

    const/4 v0, 0x0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/sharesdk/framework/a/b;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string v2, "error"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 275
    :cond_1
    invoke-direct {p0, v1, p1}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;Lcn/sharesdk/line/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 277
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method protected c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "https://api.line.me/oauth2/v2.1/verify"

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 244
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Lcn/sharesdk/framework/a/b;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    const-string v1, "error"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    .line 252
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return p1
.end method

.method public d()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v0, Lcom/mob/tools/network/KVPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/sharesdk/line/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Authorization"

    invoke-direct {v0, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcn/sharesdk/line/c;->e:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/line/c;->c()I

    move-result v6

    const-string v1, "https://api.line.me/v2/profile"

    const/4 v4, 0x0

    const-string v5, "/v2/profile"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcn/sharesdk/line/c;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 315
    invoke-static {p1, v0}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-direct {p0, v0, p1}, Lcn/sharesdk/line/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "jp.naver.line.android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 308
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "image"

    .line 319
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/line/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x8

    .line 102
    invoke-static {v0}, Lcn/sharesdk/line/utils/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "response_type"

    const-string v4, "code"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/line/c;->g:Ljava/lang/String;

    const-string v4, "client_id"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "redirect_uri"

    const-string v4, "https://www.mob.com/"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "scope"

    const-string v4, "profile"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "nonce"

    invoke-direct {v2, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "state"

    const-string v3, "12345abcde"

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://access.line.me/oauth2/v2.1/authorize?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;
    .locals 1

    .line 124
    new-instance v0, Lcn/sharesdk/line/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/line/a;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-object v0
.end method

.method public getPlatform()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/sharesdk/line/c;->d:Lcn/sharesdk/line/b;

    invoke-virtual {v0}, Lcn/sharesdk/line/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/c;->f:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/sharesdk/line/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOListener()Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/d;)Lcn/sharesdk/framework/authorize/e;
    .locals 4

    .line 178
    new-instance v0, Lcn/sharesdk/line/d;

    invoke-direct {v0, p1}, Lcn/sharesdk/line/d;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    .line 180
    iget-object v1, p0, Lcn/sharesdk/line/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent://result#Intent;package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";scheme=lineauth;end"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/sharesdk/line/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
