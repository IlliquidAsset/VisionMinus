.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AfterSaleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const-string p1, "lzqWeb"

    const-string p2, " REQUEST: ERROR"

    .line 185
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsInternet()V

    .line 187
    iget-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->retry()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 220
    iget-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "ssl\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    .line 224
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 225
    new-instance p3, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$1;

    invoke-direct {p3, p0, p2}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$1;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 231
    new-instance p3, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;

    invoke-direct {p3, p0, p2}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 237
    new-instance p3, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;

    invoke-direct {p3, p0, p2}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "weixin://wap/pay?"

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 194
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 197
    iget-object p2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {p2, p1}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 200
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    const-string v3, "http://wechatpay.powervision.me"

    .line 201
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v1
.end method
