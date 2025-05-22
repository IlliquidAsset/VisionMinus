.class Lcn/sharesdk/sina/weibo/SinaWeibo$1;
.super Ljava/lang/Object;
.source "SinaWeibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeibo;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/h;

.field final synthetic b:Lcn/sharesdk/sina/weibo/SinaWeibo;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeibo;Lcn/sharesdk/sina/weibo/h;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->a:Lcn/sharesdk/sina/weibo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->i(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->j(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "uid"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 93
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    .line 94
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    .line 95
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v5}, Lcn/sharesdk/sina/weibo/SinaWeibo;->a(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "userName"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "nickname"

    invoke-virtual {v5, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v5}, Lcn/sharesdk/sina/weibo/SinaWeibo;->b(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "remind_in"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->c(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v5, 0x0

    .line 106
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->d(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 107
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->e(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->f(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->a:Lcn/sharesdk/sina/weibo/h;

    invoke-virtual {p1, v1}, Lcn/sharesdk/sina/weibo/h;->c(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->a(Lcn/sharesdk/sina/weibo/SinaWeibo;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->g(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->h(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
