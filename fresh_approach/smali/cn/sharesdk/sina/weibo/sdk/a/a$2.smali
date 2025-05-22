.class Lcn/sharesdk/sina/weibo/sdk/a/a$2;
.super Landroid/webkit/WebChromeClient;
.source "WeiboWebPageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/sdk/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/sdk/a/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 191
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 193
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
