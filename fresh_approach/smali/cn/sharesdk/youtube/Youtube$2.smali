.class Lcn/sharesdk/youtube/Youtube$2;
.super Ljava/lang/Object;
.source "Youtube.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youtube/Youtube;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/youtube/Youtube;


# direct methods
.method constructor <init>(Lcn/sharesdk/youtube/Youtube;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->t(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->u(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "access_token"

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token_type"

    .line 177
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "refresh_token"

    .line 178
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id_token"

    .line 179
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 181
    iget-object v7, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v7}, Lcn/sharesdk/youtube/Youtube;->l(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v6}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 185
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->m(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 v6, 0x0

    .line 191
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, p1

    goto :goto_0

    .line 194
    :catchall_0
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->n(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 196
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->o(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 198
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 199
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->p(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 202
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {p1}, Lcn/sharesdk/youtube/Youtube;->q(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->r(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->s(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
