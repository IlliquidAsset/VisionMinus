.class public Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;
.super Lcn/sharesdk/framework/authorize/c;
.source "YoutubeAuthorizeWebviewClient.java"


# instance fields
.field private finished:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/g;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->activity:Lcn/sharesdk/framework/authorize/g;

    return-object p0
.end method

.method static synthetic access$100(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method private requestAuthToken(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 1

    .line 78
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;-><init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->start()V

    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .locals 3

    .line 44
    iget-boolean v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->finished:Z

    .line 48
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v0, "code"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize code is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->requestAuthToken(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "access_denied"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 63
    iget-object p1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 67
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 71
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 31
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;-><init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    invoke-virtual {p0, p2}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->onComplete(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
