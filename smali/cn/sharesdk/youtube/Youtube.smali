.class public Lcn/sharesdk/youtube/Youtube;
.super Lcn/sharesdk/framework/Platform;
.source "Youtube.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/youtube/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcn/sharesdk/youtube/Youtube;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/youtube/Youtube;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 39
    invoke-static {p0}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youtube/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic k(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic l(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic m(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic n(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic o(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic p(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic q(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic r(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic s(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic t(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic u(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 233
    iget-boolean v1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 237
    :cond_0
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {p1, v1}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    return v0

    .line 247
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isSSODisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->e(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/youtube/b;->a([Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    new-instance v0, Lcn/sharesdk/youtube/Youtube$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/Youtube$2;-><init>(Lcn/sharesdk/youtube/Youtube;)V

    invoke-virtual {p1, v0}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->doWebAuthorize([Ljava/lang/String;)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
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

    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 8

    .line 252
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTags()[Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v2

    const/16 v6, 0x9

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    if-eqz v2, :cond_2

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mkv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 260
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mob/tools/utils/ResHelper;->videoPathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcn/sharesdk/youtube/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v3

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/youtube/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 268
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 272
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v6, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1

    .line 278
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ".mkv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 279
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->f:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v5, v4, v0, v1}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_1

    .line 281
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "invalite video url."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public doWebAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->e(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/youtube/b;->a([Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    new-instance v0, Lcn/sharesdk/youtube/Youtube$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/Youtube$1;-><init>(Lcn/sharesdk/youtube/Youtube;)V

    invoke-virtual {p1, v0}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .locals 1
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

    .line 333
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 334
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 335
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 0

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

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
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

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
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

.method protected getFriendList(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcn/sharesdk/youtube/Youtube;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 1

    const-string p1, "ClientID"

    .line 72
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    const-string p1, "RedirectUrl"

    .line 73
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    const-string p1, "ShareByAppClient"

    .line 74
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    const-string p1, "AppSecret"

    .line 75
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    return-void
.end method

.method public isAuthValid()Z
    .locals 1

    .line 225
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isClientValid()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0}, Lcn/sharesdk/youtube/b;->a()Z

    move-result v0

    return v0
.end method

.method public isShareByAppClient()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    return v0
.end method

.method public removeAccount(Z)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 81
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "isSigin"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 83
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    return-void
.end method

.method protected setNetworkDevinfo()V
    .locals 0

    return-void
.end method

.method public setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 44
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->f:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    return-void
.end method

.method public setShareByAppClient(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 2

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    .line 299
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 301
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method
