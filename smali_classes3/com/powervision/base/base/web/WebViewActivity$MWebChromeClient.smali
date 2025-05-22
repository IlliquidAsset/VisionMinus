.class Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/base/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/web/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;-><init>(Lcom/powervision/base/base/web/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 217
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-virtual {p1}, Lcom/powervision/base/base/web/WebViewActivity;->hideProgress()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-virtual {p1, p2}, Lcom/powervision/base/base/web/WebViewActivity;->showProgress(I)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-static {p1}, Lcom/powervision/base/base/web/WebViewActivity;->access$300(Lcom/powervision/base/base/web/WebViewActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
