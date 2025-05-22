.class Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;
.super Ljava/lang/Thread;
.source "YoutubeAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->requestAuthToken(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;


# direct methods
.method constructor <init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->c:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    iput-object p2, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->a:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "id_token"

    const-string v1, "refresh_token"

    const-string v2, "expires_in"

    const-string v3, "token_type"

    const-string v4, "access_token"

    .line 83
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v5}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youtube/b;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    iget-object v6, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcn/sharesdk/youtube/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 87
    :try_start_2
    iget-object v6, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->c:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-static {v6}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->access$100(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_0

    .line 91
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->c:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-static {v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->access$200(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize_token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_0
    new-instance v6, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v6}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v6, v5}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 95
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->c:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-static {v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->access$300(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 103
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
