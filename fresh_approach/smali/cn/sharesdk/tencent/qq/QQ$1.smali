.class Lcn/sharesdk/tencent/qq/QQ$1;
.super Ljava/lang/Object;
.source "QQ.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/QQ;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/c;

.field final synthetic b:Lcn/sharesdk/tencent/qq/QQ;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/tencent/qq/c;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/QQ$1;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->j(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->k(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "open_id"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v3}, Lcn/sharesdk/tencent/qq/QQ;->c(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v3}, Lcn/sharesdk/tencent/qq/QQ;->d(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 109
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v3}, Lcn/sharesdk/tencent/qq/QQ;->e(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 111
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 113
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/QQ;->f(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    const-string v2, "pf"

    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pfkey"

    .line 117
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pay_token"

    .line 118
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v7, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v7}, Lcn/sharesdk/tencent/qq/QQ;->g(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/QQ;->h(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/QQ;->i(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v6, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-virtual {p1, v0}, Lcn/sharesdk/tencent/qq/c;->b(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-virtual {p1, v1}, Lcn/sharesdk/tencent/qq/c;->d(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->a:Lcn/sharesdk/tencent/qq/c;

    invoke-virtual {p1}, Lcn/sharesdk/tencent/qq/c;->a()V

    .line 126
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->a(Lcn/sharesdk/tencent/qq/QQ;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->a(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/QQ;->b(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ$1;->b:Lcn/sharesdk/tencent/qq/QQ;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
