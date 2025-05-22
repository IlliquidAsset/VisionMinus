.class public Lcom/powervision/base/base/web/WebViewActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/powervision/base/base/web/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;,
        Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;,
        Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/base/base/web/WebPresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/base/base/web/IWebView;"
    }
.end annotation


# static fields
.field public static final FLAG_AGREEMENT:I = 0x1

.field public static final PARAM_FLAG:Ljava/lang/String; = "flag"

.field public static final PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/base/base/web/WebViewActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method private initWebView()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;-><init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V

    const-string v3, "imglistener"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/base/web/WebViewActivity$MWebViewClient;-><init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/base/web/WebViewActivity$MWebChromeClient;-><init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 127
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const-wide v3, 0x7fffffffffffffffL

    .line 132
    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 137
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 138
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 140
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 143
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const-string v1, "appcache"

    .line 145
    invoke-virtual {p0, v1, v2}, Lcom/powervision/base/base/web/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-string v1, "databases"

    .line 146
    invoke-virtual {p0, v1, v2}, Lcom/powervision/base/base/web/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const-string v1, "geolocation"

    .line 147
    invoke-virtual {p0, v1, v2}, Lcom/powervision/base/base/web/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 148
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 149
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 150
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public static jumpToWebViewActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/base/base/web/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 69
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url"

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    sget p1, Lcom/powervision/base/R$anim;->anim_bottom_in:I

    sget p2, Lcom/powervision/base/R$anim;->anim_null:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 55
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_0
    :goto_0
    sget v0, Lcom/powervision/base/R$layout;->base_activity_webview:I

    return v0
.end method

.method public hideProgress()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mTitle:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/powervision/base/base/web/WebViewActivity;->setToolTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    sget p1, Lcom/powervision/base/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 79
    sget p1, Lcom/powervision/base/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 80
    sget p1, Lcom/powervision/base/R$id;->webView:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 81
    invoke-direct {p0}, Lcom/powervision/base/base/web/WebViewActivity;->initWebView()V

    return-void
.end method

.method public synthetic lambda$setListener$0$WebViewActivity(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/base/base/web/WebPresenter;

    iget-object v1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/base/web/WebPresenter;->back(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 258
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 99
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/powervision/base/base/web/-$$Lambda$WebViewActivity$sioTcHf6uycaVwAYgbHfw5v3is4;

    invoke-direct {v1, p0}, Lcom/powervision/base/base/web/-$$Lambda$WebViewActivity$sioTcHf6uycaVwAYgbHfw5v3is4;-><init>(Lcom/powervision/base/base/web/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToolTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 88
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/powervision/base/base/web/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/powervision/base/R$mipmap;->icon_back_black:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public showProgress(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/web/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
