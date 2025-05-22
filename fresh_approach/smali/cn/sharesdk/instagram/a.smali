.class public Lcn/sharesdk/instagram/a;
.super Lcn/sharesdk/framework/authorize/c;
.source "InstagramAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/g;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/instagram/a;->activity:Lcn/sharesdk/framework/authorize/g;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/instagram/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/instagram/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/instagram/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcn/sharesdk/instagram/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcn/sharesdk/instagram/a;->a:Z

    .line 56
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-object p1, p0, Lcn/sharesdk/instagram/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcn/sharesdk/instagram/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "code is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 64
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Lcn/sharesdk/instagram/a$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/instagram/a$1;-><init>(Lcn/sharesdk/instagram/a;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lcn/sharesdk/instagram/a$1;->start()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/sharesdk/instagram/a;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/instagram/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x4

    .line 39
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 40
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 41
    iget-object p1, p0, Lcn/sharesdk/instagram/a;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 42
    invoke-virtual {p0, p2}, Lcn/sharesdk/instagram/a;->onComplete(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/sharesdk/instagram/a;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/instagram/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 27
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 28
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 29
    iget-object p1, p0, Lcn/sharesdk/instagram/a;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 30
    invoke-virtual {p0, p2}, Lcn/sharesdk/instagram/a;->onComplete(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
