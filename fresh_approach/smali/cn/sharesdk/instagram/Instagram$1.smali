.class Lcn/sharesdk/instagram/Instagram$1;
.super Ljava/lang/Object;
.source "Instagram.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instagram/Instagram;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/instagram/b;

.field final synthetic b:Lcn/sharesdk/instagram/Instagram;


# direct methods
.method constructor <init>(Lcn/sharesdk/instagram/Instagram;Lcn/sharesdk/instagram/b;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    iput-object p2, p0, Lcn/sharesdk/instagram/Instagram$1;->a:Lcn/sharesdk/instagram/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->j(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->k(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "access_token"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bio"

    .line 63
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "website"

    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "profile_picture"

    .line 65
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "full_name"

    .line 66
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 67
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v8, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v8}, Lcn/sharesdk/instagram/Instagram;->c(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 70
    iget-object v8, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v8}, Lcn/sharesdk/instagram/Instagram;->d(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {p1}, Lcn/sharesdk/instagram/Instagram;->e(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v8, "nickname"

    invoke-virtual {p1, v8, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {p1}, Lcn/sharesdk/instagram/Instagram;->f(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v1, "resume"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {p1}, Lcn/sharesdk/instagram/Instagram;->g(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {p1}, Lcn/sharesdk/instagram/Instagram;->h(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v1, "icon"

    invoke-virtual {p1, v1, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {p1}, Lcn/sharesdk/instagram/Instagram;->i(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->a:Lcn/sharesdk/instagram/b;

    invoke-virtual {p1, v0}, Lcn/sharesdk/instagram/b;->b(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/instagram/Instagram;->a(Lcn/sharesdk/instagram/Instagram;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->a(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->b(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
