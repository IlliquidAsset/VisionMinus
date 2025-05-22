.class public Lcom/powervision/login/ui/fragment/WebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/ui/fragment/WebViewFragment$MWebChromeClient;,
        Lcom/powervision/login/ui/fragment/WebViewFragment$MWebViewClient;,
        Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;
    }
.end annotation


# static fields
.field public static final PARAM_URL:Ljava/lang/String; = "param_url"


# instance fields
.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private initWebView()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;-><init>(Lcom/powervision/login/ui/fragment/WebViewFragment;Lcom/powervision/login/ui/fragment/WebViewFragment$1;)V

    const-string v3, "imglistener"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/login/ui/fragment/WebViewFragment$MWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/powervision/login/ui/fragment/WebViewFragment$MWebViewClient;-><init>(Lcom/powervision/login/ui/fragment/WebViewFragment;Lcom/powervision/login/ui/fragment/WebViewFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/powervision/login/ui/fragment/WebViewFragment$MWebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/powervision/login/ui/fragment/WebViewFragment$MWebChromeClient;-><init>(Lcom/powervision/login/ui/fragment/WebViewFragment;Lcom/powervision/login/ui/fragment/WebViewFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 90
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const-wide v3, 0x7fffffffffffffffL

    .line 95
    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 100
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 101
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 103
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 106
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "appcache"

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "databases"

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "geolocation"

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 111
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 112
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 113
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/powervision/login/ui/fragment/WebViewFragment;
    .locals 3

    .line 40
    new-instance v0, Lcom/powervision/login/ui/fragment/WebViewFragment;

    invoke-direct {v0}, Lcom/powervision/login/ui/fragment/WebViewFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_url"

    .line 42
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/powervision/login/ui/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    sget p3, Lcom/powervision/login/R$layout;->login_fragment_web_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/powervision/login/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 60
    invoke-direct {p0}, Lcom/powervision/login/ui/fragment/WebViewFragment;->initWebView()V

    .line 61
    iget-object p2, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/powervision/login/ui/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method
