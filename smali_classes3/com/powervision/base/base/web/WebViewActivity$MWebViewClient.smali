.class Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/base/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/web/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;-><init>(Lcom/powervision/base/base/web/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public addWebImageClickListener(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "javascript:(function() {var imgArr = document.getElementByTagName(\"img\");for(i = 0; i < imgArr.length(); i--) {imgArr[i].onclick = function() {window.imglistener.showBigImage(this.src);}}}())"

    .line 202
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
