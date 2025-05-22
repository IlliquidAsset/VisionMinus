.class public Lcn/sharesdk/twitter/b;
.super Lcn/sharesdk/framework/authorize/c;
.source "TwitterAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 8

    .line 60
    iget-boolean v0, p0, Lcn/sharesdk/twitter/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/sharesdk/twitter/b;->a:Z

    .line 65
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-static {v1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcn/sharesdk/twitter/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "&"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "="

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 82
    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    aget-object v6, v5, v3

    aget-object v5, v5, v0

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-gtz p1, :cond_6

    .line 89
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_5

    .line 90
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 95
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_7

    .line 96
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    :cond_7
    return-void

    .line 68
    :cond_8
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_9

    .line 69
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/twitter/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 44
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oauth_verifier"

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcn/sharesdk/twitter/b$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/twitter/b$2;-><init>(Lcn/sharesdk/twitter/b;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcn/sharesdk/twitter/b$2;->start()V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/twitter/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 21
    iget-object p1, p0, Lcn/sharesdk/twitter/b;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 23
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "oauth_verifier"

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Lcn/sharesdk/twitter/b$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/twitter/b$1;-><init>(Lcn/sharesdk/twitter/b;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcn/sharesdk/twitter/b$1;->start()V

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
