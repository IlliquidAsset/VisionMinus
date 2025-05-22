.class Lcn/sharesdk/line/Line$1;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/Line;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/line/Line;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/Line;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->h(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->i(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "access_token"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token_type"

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "expires_in"

    .line 65
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "scope"

    .line 66
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "id_token"

    .line 67
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {p1}, Lcn/sharesdk/line/Line;->a(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {p1}, Lcn/sharesdk/line/Line;->b(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v1, 0x0

    .line 77
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {p1}, Lcn/sharesdk/line/Line;->c(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 78
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {p1}, Lcn/sharesdk/line/Line;->d(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {p1}, Lcn/sharesdk/line/Line;->e(Lcn/sharesdk/line/Line;)Lcn/sharesdk/line/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/line/c;->d(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/line/Line;->a(Lcn/sharesdk/line/Line;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->f(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->g(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
