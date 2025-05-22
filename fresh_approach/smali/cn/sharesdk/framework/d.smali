.class public Lcn/sharesdk/framework/d;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/sharesdk/framework/Platform;",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 16

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    :try_start_0
    const-string v1, "nickname"

    const-string v2, "icon"

    const-string v3, "gender"

    const-string v4, "snsUserUrl"

    const-string v5, "resume"

    const-string v6, "secretType"

    const-string v7, "secret"

    const-string v8, "birthday"

    const-string v9, "followerCount"

    const-string v10, "favouriteCount"

    const-string v11, "shareCount"

    const-string v12, "snsregat"

    const-string v13, "snsUserLevel"

    const-string v14, "educationJSONArrayStr"

    const-string v15, "workJSONArrayStr"

    .line 265
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    .line 282
    :try_start_1
    invoke-direct {v2, v0, v1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    .line 284
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p2, v4

    if-lez v5, :cond_0

    const/16 v7, 0x7c

    .line 321
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 326
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "utf-8"

    .line 331
    invoke-static {v6, v7}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======UserData: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/f;->b()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcn/sharesdk/framework/d;->b()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 108
    new-instance v1, Lcn/sharesdk/framework/d$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/d$2;-><init>(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V

    iput-object v1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 5

    .line 290
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WechatMoments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WechatFavorite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserGender()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Wechat"

    .line 294
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    :cond_1
    :try_start_0
    const-string p1, "gender"

    const-string v1, "birthday"

    const-string v2, "secretType"

    const-string v3, "educationJSONArrayStr"

    const-string v4, "workJSONArrayStr"

    .line 301
    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 310
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/d$1;-><init>(Lcn/sharesdk/framework/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz p3, :cond_0

    const-string v0, "ShareParams"

    .line 165
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 172
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v1, p3

    :goto_0
    if-eqz v0, :cond_6

    .line 177
    new-instance v2, Lcn/sharesdk/framework/b/b/f;

    invoke-direct {v2}, Lcn/sharesdk/framework/b/b/f;-><init>()V

    .line 178
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/sharesdk/framework/b/b/f;->n:[Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WechatMoments"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WechatFavorite"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Wechat"

    .line 183
    invoke-static {v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 185
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TencentWeibo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    :cond_3
    :goto_1
    iput-object v3, v2, Lcn/sharesdk/framework/b/b/f;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v3

    iput v3, v2, Lcn/sharesdk/framework/b/b/f;->a:I

    .line 193
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    iput-object v1, v2, Lcn/sharesdk/framework/b/b/f;->c:Ljava/lang/String;

    .line 196
    iput-object v0, v2, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    :cond_4
    if-eqz p1, :cond_5

    .line 200
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/d;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    .line 203
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 205
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 210
    :cond_6
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_7

    .line 212
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Lcn/sharesdk/framework/d;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 216
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method a()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
    .locals 2

    .line 223
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/f;->b()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcn/sharesdk/framework/d;->b()V

    .line 228
    :cond_0
    iput p2, p0, Lcn/sharesdk/framework/d;->c:I

    .line 229
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 230
    new-instance v1, Lcn/sharesdk/framework/d$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/d$3;-><init>(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V

    iput-object v1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 259
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lcn/sharesdk/framework/CustomPlatform;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 53
    iput-object v2, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 54
    iput v1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    .line 67
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 69
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Wechat"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcn/sharesdk/framework/d;->c:I

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_5

    .line 70
    :cond_2
    iput-object v2, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 71
    iput v1, p0, Lcn/sharesdk/framework/d;->c:I

    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/d;->b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void
.end method
