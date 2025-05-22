.class public Lcn/sharesdk/twitter/Twitter;
.super Lcn/sharesdk/framework/Platform;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/twitter/Twitter$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcn/sharesdk/twitter/Twitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/twitter/Twitter;ILjava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/twitter/Twitter;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic k(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic l(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcn/sharesdk/twitter/Twitter;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcn/sharesdk/twitter/Twitter;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/twitter/Twitter;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/twitter/Twitter;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/twitter/Twitter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/twitter/Twitter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcn/sharesdk/twitter/Twitter$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/twitter/Twitter$1;-><init>(Lcn/sharesdk/twitter/Twitter;Lcn/sharesdk/twitter/c;)V

    .line 163
    invoke-virtual {p0}, Lcn/sharesdk/twitter/Twitter;->isSSODisable()Z

    move-result v1

    .line 114
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
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

    .line 285
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v0

    .line 287
    :try_start_0
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 288
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "error_code"

    .line 295
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "error"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_6

    .line 304
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_2

    .line 296
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_3

    .line 297
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p3, p4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 289
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_5

    .line 290
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    const-string p4, "response is null"

    invoke-direct {p2, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 307
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_6

    .line 308
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 11

    .line 53
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/twitter/Twitter;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v2}, Lcn/sharesdk/twitter/Twitter;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    .line 67
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 68
    invoke-virtual {v0, v7, v8}, Lcn/sharesdk/twitter/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 69
    array-length v7, v4

    if-lez v7, :cond_1

    .line 70
    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/twitter/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 74
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/twitter/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 80
    invoke-virtual {v0, v2}, Lcn/sharesdk/twitter/c;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {v0, v1}, Lcn/sharesdk/twitter/c;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 93
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 94
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    const-string v2, "error_code"

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "ShareParams"

    .line 105
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_9

    .line 107
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_9
    return-void

    .line 99
    :cond_a
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_b

    .line 100
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 86
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 10
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

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    const-string v2, "type"

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    return-object v3

    :cond_0
    const-string p1, "FOLLOWERS"

    .line 408
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "FRIENDS"

    .line 411
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "FOLLOWING"

    .line 405
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/twitter/Twitter;->getPlatformId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "snsplat"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "snsuid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "next_cursor"

    .line 420
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    const-string v2, "users"

    .line 423
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    return-object v3

    .line 427
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    check-cast p2, Ljava/util/ArrayList;

    .line 429
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    return-object v3

    .line 432
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "0"

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_6

    goto :goto_2

    .line 436
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "id"

    .line 437
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "screen_name"

    .line 438
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "nickname"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "profile_image_url"

    .line 439
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "gender"

    const-string v9, "2"

    .line 440
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "description"

    .line 441
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resume"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "verified"

    .line 442
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v5, "1"

    :cond_7
    const-string v8, "secretType"

    .line 443
    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "followers_count"

    .line 444
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "followerCount"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "friends_count"

    .line 445
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "favouriteCount"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "statuses_count"

    .line 446
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "shareCount"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "created_at"

    .line 447
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 449
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v8, "snsregat"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://twitter.com/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "snsUserUrl"

    .line 451
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 454
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_9

    return-object v3

    .line 459
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_false"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    const-string p2, "0_true"

    :cond_b
    const-string p1, "nextCursor"

    .line 463
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "list"

    .line 464
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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

    .line 314
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 315
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "entities"

    .line 318
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v1, "media"

    .line 322
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v1, "media_url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "id"

    .line 330
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 331
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    :cond_1
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v0, 0x6

    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
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

    const/4 p1, 0x0

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 339
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 341
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p2

    .line 344
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 347
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v0

    .line 349
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p3, "0"

    .line 350
    :cond_3
    invoke-virtual {v0, p2, p3}, Lcn/sharesdk/twitter/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 351
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p3

    if-gtz p3, :cond_4

    goto :goto_1

    :cond_4
    const-string p3, "error_code"

    .line 355
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "error"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/16 p3, 0xb

    .line 359
    invoke-virtual {p0, p3, p2}, Lcn/sharesdk/twitter/Twitter;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 361
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p1
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

    const/4 p1, 0x0

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 369
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 371
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p2

    .line 374
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 377
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v0

    .line 379
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p3, "0"

    .line 380
    :cond_3
    invoke-virtual {v0, p2, p3}, Lcn/sharesdk/twitter/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 381
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p3

    if-gtz p3, :cond_4

    goto :goto_1

    :cond_4
    const-string p3, "error_code"

    .line 385
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "error"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p3, 0x2

    .line 389
    invoke-virtual {p0, p3, p2}, Lcn/sharesdk/twitter/Twitter;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 391
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 243
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 246
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 249
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_2

    .line 250
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The account do not authorize!"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 253
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object p2

    .line 255
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p3, "0"

    .line 256
    :cond_3
    invoke-virtual {p2, p1, p3}, Lcn/sharesdk/twitter/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 257
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "error_code"

    .line 264
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "error"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    .line 272
    :cond_5
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_a

    .line 273
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_2

    .line 265
    :cond_6
    :goto_0
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_7

    .line 266
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_7
    return-void

    .line 258
    :cond_8
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_9

    .line 259
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "response is null"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 276
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_a

    .line 277
    iget-object p2, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 0

    const-string p1, "ConsumerKey"

    .line 29
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/Twitter;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/twitter/Twitter;->a:Ljava/lang/String;

    const-string p1, "ConsumerSecret"

    .line 30
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/Twitter;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/twitter/Twitter;->b:Ljava/lang/String;

    const-string p1, "CallbackUrl"

    .line 31
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/Twitter;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/twitter/Twitter;->c:Ljava/lang/String;

    return-void
.end method

.method protected setNetworkDevinfo()V
    .locals 2

    const-string v0, "consumer_key"

    const-string v1, "ConsumerKey"

    .line 47
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/twitter/Twitter;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/twitter/Twitter;->a:Ljava/lang/String;

    const-string v0, "consumer_secret"

    const-string v1, "ConsumerSecret"

    .line 48
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/twitter/Twitter;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/twitter/Twitter;->b:Ljava/lang/String;

    const-string v0, "redirect_uri"

    const-string v1, "CallbackUrl"

    .line 49
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/twitter/Twitter;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/twitter/Twitter;->c:Ljava/lang/String;

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 6

    const-string v0, "screen_name"

    .line 195
    invoke-static {p0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v1

    const/16 v2, 0x8

    .line 197
    :try_start_0
    invoke-virtual {v1, p1}, Lcn/sharesdk/twitter/c;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 198
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "error_code"

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 214
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "nickname"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    const-string v4, "profile_image_url"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "gender"

    const-string v4, "2"

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "resume"

    const-string v4, "description"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "true"

    const-string v3, "verified"

    .line 218
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 219
    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "secretType"

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {v3, v4, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "followerCount"

    const-string v4, "followers_count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "favouriteCount"

    const-string v4, "friends_count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "shareCount"

    const-string v4, "statuses_count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 223
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 225
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "snsregat"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://twitter.com/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsUserUrl"

    invoke-virtual {v0, v3, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_8

    .line 231
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_3

    .line 206
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_5

    .line 207
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    return-void

    .line 199
    :cond_6
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_7

    .line 200
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 234
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_8

    .line 235
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method
