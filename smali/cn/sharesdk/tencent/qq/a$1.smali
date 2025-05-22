.class Lcn/sharesdk/tencent/qq/a$1;
.super Landroid/webkit/WebViewClient;
.source "DownLoadWebPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "download://"

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    invoke-static {p2}, Lcn/sharesdk/tencent/qq/a;->a(Lcn/sharesdk/tencent/qq/a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    invoke-virtual {p2, v0}, Lcn/sharesdk/tencent/qq/a;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 63
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 64
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/a;->b(Lcn/sharesdk/tencent/qq/a;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 65
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/sharesdk/tencent/qq/a;->a(Lcn/sharesdk/tencent/qq/a;Lcn/sharesdk/framework/authorize/SSOListener;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 66
    iget-object p2, p0, Lcn/sharesdk/tencent/qq/a$1;->a:Lcn/sharesdk/tencent/qq/a;

    invoke-virtual {p2}, Lcn/sharesdk/tencent/qq/a;->a()V

    :cond_0
    return p1
.end method
