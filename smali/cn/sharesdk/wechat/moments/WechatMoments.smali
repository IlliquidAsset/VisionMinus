.class public Lcn/sharesdk/wechat/moments/WechatMoments;
.super Lcn/sharesdk/framework/Platform;
.source "WechatMoments.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;ILjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/moments/WechatMoments;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 172
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 3

    .line 179
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 181
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 183
    iget-object p2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    .line 184
    iget-object p2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p2, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return v2

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 188
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {p1, p0, v1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return v2

    :cond_3
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    .line 193
    invoke-virtual {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/moments/WechatMoments;->innerAuthorize(ILjava/lang/Object;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 4

    .line 113
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 122
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 123
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 134
    :cond_4
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v2, 0x17

    invoke-direct {v0, p0, v2}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 135
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/j;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 138
    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/g;)V

    .line 139
    new-instance v0, Lcn/sharesdk/wechat/moments/WechatMoments$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/wechat/moments/WechatMoments$1;-><init>(Lcn/sharesdk/wechat/moments/WechatMoments;)V

    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 160
    :try_start_0
    invoke-virtual {p1, v2}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 162
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void

    .line 114
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_7

    .line 115
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_7
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

    .line 285
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4

    const/4 v0, 0x1

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 215
    new-instance v1, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/j;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 216
    iget-boolean v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    const/16 v3, 0x9

    if-eqz v2, :cond_0

    .line 218
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/j;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 228
    :try_start_1
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->b(Lcn/sharesdk/wechat/utils/j;)V

    .line 229
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 231
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 237
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
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

    .line 291
    new-instance p2, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {p2}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 293
    iput-object v0, p2, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    iget-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 300
    iget-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 302
    iget-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 306
    iget-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 310
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v3, "extInfo"

    .line 311
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 312
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object p1, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v0, "image"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "musicFileUrl"

    .line 314
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iput-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    return-object p2
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 277
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 5

    const-string p1, "AppId"

    .line 34
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v0, "AppSecret"

    .line 35
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 36
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 39
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const-string v1, "Wechat"

    .line 40
    invoke-virtual {p0, v1, p1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 42
    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 43
    sget-object v3, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 46
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string v0, "WechatFavorite"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 51
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 201
    invoke-static {}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/wechat/utils/k;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/k;->c(Ljava/lang/String;)Z

    .line 203
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->d()Z

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

    .line 72
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v2, "app_secret"

    const-string v3, "AppSecret"

    .line 73
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 76
    iget-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v5, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    const-string v6, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    const/16 v7, 0x25

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/16 v10, 0x17

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 78
    :cond_0
    invoke-virtual {p0, v9, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 80
    invoke-virtual {p0, v9, v10}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 81
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v7, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 87
    invoke-virtual {p0, v10, v10}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 88
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 95
    :cond_3
    invoke-virtual {p0, v9, v2, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 97
    invoke-virtual {p0, v9, v10}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 98
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p0, v7, v2, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 104
    invoke-virtual {p0, v10, v10}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 105
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 251
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 3

    .line 257
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    new-instance p1, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x17

    invoke-direct {p1, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 265
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/wechat/utils/g;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 269
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 270
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 259
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void
.end method
