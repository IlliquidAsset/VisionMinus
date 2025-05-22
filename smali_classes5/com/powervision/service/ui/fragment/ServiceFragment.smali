.class public Lcom/powervision/service/ui/fragment/ServiceFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "ServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;
    }
.end annotation


# static fields
.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x2710

.field private static final UPLOAD_IMG_TYPE:Ljava/lang/String; = "image/jpeg"


# instance fields
.field private mErrorView:Landroid/view/View;

.field private mLanguage:Ljava/lang/String;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUserID:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/service/ui/fragment/ServiceFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/service/ui/fragment/ServiceFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->openImageChooserActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mErrorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/service/ui/fragment/ServiceFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mErrorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/service/ui/fragment/ServiceFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUserID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/service/ui/fragment/ServiceFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method private initWebView()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 98
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 99
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x2

    .line 101
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v1, "utf-8"

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;-><init>(Lcom/powervision/service/ui/fragment/ServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/service/ui/fragment/ServiceFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$1;-><init>(Lcom/powervision/service/ui/fragment/ServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 117
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://as.powervision.me/app/v1/index.html?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/service/ui/fragment/ServiceFragment;
    .locals 1

    .line 56
    new-instance v0, Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-direct {v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;-><init>()V

    return-object v0
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 278
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 283
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 286
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 287
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 288
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_4

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 293
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 296
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 297
    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method private openImageChooserActivity()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 73
    sget v0, Lcom/powervision/service/R$layout;->service_fragment_service:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getServiceLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mLanguage:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUserID:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->initWebView()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    sget p1, Lcom/powervision/service/R$id;->webView:I

    invoke-virtual {p0, p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    const-string v1, "img_path"

    .line 248
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    .line 252
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 254
    :goto_0
    iget-object v2, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_2

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/service/ui/fragment/ServiceFragment;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_1

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    .line 257
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 258
    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 263
    :cond_3
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_4

    .line 264
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 265
    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    .line 267
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 268
    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_1
    return-void
.end method
