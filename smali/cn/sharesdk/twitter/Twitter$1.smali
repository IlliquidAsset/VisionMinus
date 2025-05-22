.class Lcn/sharesdk/twitter/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/twitter/Twitter;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/twitter/c;

.field final synthetic b:Lcn/sharesdk/twitter/Twitter;


# direct methods
.method constructor <init>(Lcn/sharesdk/twitter/Twitter;Lcn/sharesdk/twitter/c;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    iput-object p2, p0, Lcn/sharesdk/twitter/Twitter$1;->a:Lcn/sharesdk/twitter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->k(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->l(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    const-string v0, "oauth_token"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_name"

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "nickname"

    const-string v3, "user_id"

    if-eqz v0, :cond_1

    :try_start_1
    const-string v4, ""

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "platformtools.bh"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "oauth_token_secret"

    .line 136
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v3}, Lcn/sharesdk/twitter/Twitter;->e(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v3}, Lcn/sharesdk/twitter/Twitter;->f(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v3}, Lcn/sharesdk/twitter/Twitter;->g(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {p1}, Lcn/sharesdk/twitter/Twitter;->h(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter$1;->a:Lcn/sharesdk/twitter/c;

    invoke-virtual {p1, v0, v4}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "tk"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ts"

    .line 123
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 124
    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 125
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v3, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v3}, Lcn/sharesdk/twitter/Twitter;->a(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->b(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->c(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {p1}, Lcn/sharesdk/twitter/Twitter;->d(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/twitter/Twitter;->a(Lcn/sharesdk/twitter/Twitter;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->i(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    invoke-static {v0}, Lcn/sharesdk/twitter/Twitter;->j(Lcn/sharesdk/twitter/Twitter;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/twitter/Twitter$1;->b:Lcn/sharesdk/twitter/Twitter;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
