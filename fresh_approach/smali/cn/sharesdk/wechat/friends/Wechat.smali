.class public Lcn/sharesdk/wechat/friends/Wechat;
.super Lcn/sharesdk/framework/Platform;
.source "Wechat.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcn/sharesdk/wechat/friends/Wechat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/friends/Wechat;ILjava/lang/Object;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/friends/Wechat;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 187
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 5

    .line 194
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->isClientValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 195
    iget-object p2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p2, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x9

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    .line 200
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/sharesdk/wechat/friends/Wechat;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v3, "refresh_token"

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    :try_start_0
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v3, 0x16

    invoke-direct {v0, p0, v3}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 209
    iget-object v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return v2

    :catch_0
    move-exception v0

    .line 215
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 219
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/friends/Wechat;->innerAuthorize(ILjava/lang/Object;)V

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 132
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 133
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 139
    :cond_2
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v2, 0x16

    invoke-direct {v0, p0, v2}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 140
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v2, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/j;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 143
    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/g;)V

    .line 144
    new-instance v0, Lcn/sharesdk/wechat/friends/Wechat$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/wechat/friends/Wechat$1;-><init>(Lcn/sharesdk/wechat/friends/Wechat;)V

    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 164
    :try_start_0
    invoke-virtual {p1, v2}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 166
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    .line 125
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_5

    .line 126
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
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

    .line 298
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4

    const/4 v0, 0x0

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxUserName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->toMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "wxWithShareTicket"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->f:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxWithShareTicket()Z

    move-result v1

    :goto_2
    iput-boolean v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->f:Z

    .line 230
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->toMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "wxMiniProgramType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->g:I

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getWxMiniProgramType()I

    move-result v1

    :goto_3
    iput v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->g:I

    .line 231
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->a(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->b(Ljava/lang/String;)V

    .line 233
    iget-boolean v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->f:Z

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->a(Z)V

    .line 234
    iget v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->g:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->a(I)V

    .line 235
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 236
    new-instance v1, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/j;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 237
    iget-boolean v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    const/16 v3, 0x9

    if-eqz v2, :cond_4

    .line 239
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/j;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 241
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_4

    .line 246
    :cond_4
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 248
    :try_start_1
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->b(Lcn/sharesdk/wechat/utils/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 250
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_4
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
    .locals 5
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

    .line 304
    new-instance p2, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {p2}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 306
    iput-object v0, p2, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    iget-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 313
    iget-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 315
    iget-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 322
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 323
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v3, "extInfo"

    .line 324
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 325
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v0, "image"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "musicFileUrl"

    .line 327
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iput-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    return-object p2
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 290
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 5

    const-string p1, "AppId"

    .line 37
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    const-string v0, "AppSecret"

    .line 38
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 39
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    const-string v1, "UserName"

    .line 40
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "userName"

    :cond_0
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    const-string v1, "Path"

    .line 41
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "path"

    :cond_1
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    const-string v1, "WithShareTicket"

    .line 42
    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->f:Z

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "MiniprogramType"

    .line 44
    invoke-virtual {p0, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    iput v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->g:I

    .line 50
    :goto_0
    iget-object v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_2
    const-string v3, "WechatMoments"

    .line 51
    invoke-virtual {p0, v3, p1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v3, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    .line 53
    iget-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 54
    sget-object v4, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcn/sharesdk/wechat/friends/Wechat;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_3
    const-string v0, "WechatFavorite"

    .line 60
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 62
    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcn/sharesdk/wechat/friends/Wechat;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 173
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 175
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 11

    const-string v0, "app_id"

    const-string v1, "AppId"

    .line 83
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    const-string v2, "app_secret"

    const-string v3, "AppSecret"

    .line 84
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    const-string v5, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    const-string v6, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    const/4 v7, 0x0

    const/16 v8, 0x16

    const/16 v9, 0x25

    const/16 v10, 0x17

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 89
    :cond_0
    invoke-virtual {p0, v10, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 91
    invoke-virtual {p0, v10, v8}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 92
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, v9, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 98
    invoke-virtual {p0, v9, v8}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 99
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 104
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 106
    :cond_3
    invoke-virtual {p0, v10, v2, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 108
    invoke-virtual {p0, v10, v8}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 109
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p0, v9, v2, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 115
    invoke-virtual {p0, v9, v8}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 116
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 3

    .line 270
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    new-instance p1, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x16

    invoke-direct {p1, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 278
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/wechat/utils/g;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 282
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 283
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 272
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void
.end method
