.class Lcn/sharesdk/sina/weibo/d$1;
.super Ljava/lang/Thread;
.source "SinaWeiboAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/sina/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/d;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$1;->c:Lcn/sharesdk/sina/weibo/d;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/d$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "access_token"

    const-string v1, "expires_in"

    const-string v2, "remind_in"

    const-string v3, "uid"

    .line 120
    :try_start_0
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v4}, Lcn/sharesdk/sina/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/h;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/d$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/sharesdk/sina/weibo/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 125
    :try_start_2
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/d$1;->c:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v5}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 130
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->c:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->b(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 134
    :cond_0
    new-instance v5, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v5}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v5, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 135
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->c:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->c(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
