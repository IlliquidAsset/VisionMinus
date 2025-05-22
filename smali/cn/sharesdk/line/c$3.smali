.class Lcn/sharesdk/line/c$3;
.super Ljava/lang/Thread;
.source "LineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/c;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/line/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    iput-object p2, p0, Lcn/sharesdk/line/c$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/line/c$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "id_token"

    const-string v1, "scope"

    const-string v2, "expires_in"

    const-string v3, "refresh_token"

    const-string v4, "token_type"

    const-string v5, "access_token"

    .line 393
    :try_start_0
    iget-object v6, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    iget-object v7, p0, Lcn/sharesdk/line/c$3;->a:Ljava/lang/String;

    iget-object v8, p0, Lcn/sharesdk/line/c$3;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcn/sharesdk/line/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 395
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 396
    iget-object v7, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v7}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 397
    iget-object v7, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v7}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v7

    invoke-interface {v7, v6}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    .line 401
    iget-object v7, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v7}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 402
    iget-object v0, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 405
    :cond_1
    new-instance v7, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v7}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v7, v6}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 406
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 407
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 415
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 416
    iget-object v1, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcn/sharesdk/line/c$3;->c:Lcn/sharesdk/line/c;

    invoke-static {v1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
