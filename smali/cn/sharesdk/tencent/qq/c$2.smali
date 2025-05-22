.class Lcn/sharesdk/tencent/qq/c$2;
.super Ljava/lang/Object;
.source "QQHelper.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/c;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/c$2;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 8

    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v0, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/c$2;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-static {v3}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/tencent/qq/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "access_token"

    invoke-direct {v0, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v6, "unionid"

    const-string v3, "1"

    invoke-direct {v0, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v0, 0x2710

    .line 227
    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 228
    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 230
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object v0

    .line 232
    :try_start_0
    iget-object v7, p0, Lcn/sharesdk/tencent/qq/c$2;->a:Lcn/sharesdk/tencent/qq/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/b;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/tencent/qq/c;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/c$2;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-static {p1}, Lcn/sharesdk/tencent/qq/c;->b(Lcn/sharesdk/tencent/qq/c;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v6, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "qq auth,get unionId fail"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
