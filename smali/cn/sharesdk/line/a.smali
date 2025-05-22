.class public Lcn/sharesdk/line/a;
.super Lcn/sharesdk/framework/authorize/c;
.source "LineAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .locals 5

    .line 31
    iget-boolean v0, p0, Lcn/sharesdk/line/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/sharesdk/line/a;->a:Z

    .line 36
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_description"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v2, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    if-nez v1, :cond_3

    .line 42
    iget-object v1, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_3

    const-string v1, "code"

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    new-instance p1, Lcn/sharesdk/line/a$1;

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/line/a$1;-><init>(Lcn/sharesdk/line/a;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcn/sharesdk/line/a$1;->start()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://www.mob.com"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 23
    iget-object p1, p0, Lcn/sharesdk/line/a;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 24
    invoke-virtual {p0, p2}, Lcn/sharesdk/line/a;->onComplete(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
