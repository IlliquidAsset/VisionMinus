.class Lcn/sharesdk/facebook/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/Facebook;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/d;

.field final synthetic b:Lcn/sharesdk/facebook/Facebook;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/Facebook;Lcn/sharesdk/facebook/d;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    iput-object p2, p0, Lcn/sharesdk/facebook/Facebook$1;->a:Lcn/sharesdk/facebook/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->e(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->f(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "oauth_token"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_token_expires"

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "expires_in"

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 82
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 86
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "access_token"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {p1}, Lcn/sharesdk/facebook/Facebook;->c(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {p1}, Lcn/sharesdk/facebook/Facebook;->d(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 91
    iget-object p1, p0, Lcn/sharesdk/facebook/Facebook$1;->a:Lcn/sharesdk/facebook/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/facebook/Facebook;->a(Lcn/sharesdk/facebook/Facebook;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->a(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    invoke-static {v0}, Lcn/sharesdk/facebook/Facebook;->b(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook$1;->b:Lcn/sharesdk/facebook/Facebook;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
