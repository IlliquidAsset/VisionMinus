.class Lcn/sharesdk/instagram/a$1;
.super Ljava/lang/Thread;
.source "InstagramAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instagram/a;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/instagram/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/instagram/a;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    iput-object p2, p0, Lcn/sharesdk/instagram/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "id"

    const-string v1, "full_name"

    const-string v2, "profile_picture"

    const-string v3, "website"

    const-string v4, "bio"

    const-string v5, "username"

    const-string v6, "access_token"

    .line 67
    iget-object v7, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v7}, Lcn/sharesdk/instagram/a;->a(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/g;

    move-result-object v7

    invoke-virtual {v7}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v7

    invoke-interface {v7}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v7

    .line 68
    invoke-static {v7}, Lcn/sharesdk/instagram/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instagram/b;

    move-result-object v7

    .line 71
    :try_start_0
    iget-object v8, p0, Lcn/sharesdk/instagram/a$1;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 73
    iget-object v8, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v8}, Lcn/sharesdk/instagram/a;->b(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v8

    invoke-interface {v8, v7}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    .line 78
    iget-object v0, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v0}, Lcn/sharesdk/instagram/a;->c(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 83
    :cond_0
    :try_start_1
    new-instance v8, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v8}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v8, v7}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 84
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 85
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "user"

    .line 87
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 88
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v0}, Lcn/sharesdk/instagram/a;->d(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v8}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 96
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
