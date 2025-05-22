.class public abstract Lcn/sharesdk/framework/authorize/c;
.super Lcn/sharesdk/framework/g;
.source "AuthorizeWebviewClient.java"


# instance fields
.field protected activity:Lcn/sharesdk/framework/authorize/g;

.field protected listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field protected redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcn/sharesdk/framework/g;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->activity:Lcn/sharesdk/framework/authorize/g;

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/c;->redirectUri:Ljava/lang/String;

    .line 15
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method


# virtual methods
.method protected abstract onComplete(Ljava/lang/String;)V
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 21
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->activity:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    if-eqz p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
