.class public Lcn/powervision/upgrade/activity/AfterSaleListActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "AfterSaleListActivity.java"

# interfaces
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;
    }
.end annotation


# instance fields
.field mLanguage:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field tipsDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, "en"

    .line 52
    iput-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->initWebView()V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private declared-synchronized initWebView()V
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 96
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 97
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v1, "utf-8"

    .line 101
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity$2;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$2;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.powervision.me/app/about.html?language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 276
    new-instance v0, Lcn/powervision/upgrade/activity/-$$Lambda$AfterSaleListActivity$Tz8ubbvAvKsFeh3p4b9vbDn8AS0;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/-$$Lambda$AfterSaleListActivity$Tz8ubbvAvKsFeh3p4b9vbDn8AS0;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 49
    sget v0, Lcn/powervision/upgrade/R$layout;->upgrade_aftersale:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    sget p1, Lcn/powervision/upgrade/R$id;->after_sale_web:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    .line 58
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ja"

    .line 59
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "zh"

    .line 61
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mLanguage:Ljava/lang/String;

    .line 65
    :cond_1
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/WifiSsidutil;->getInstance()Lcom/powervision/base/utils/WifiSsidutil;

    move-result-object p1

    new-instance v0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$1;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$1;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/WifiSsidutil;->addRegister(Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;)V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$0$AfterSaleListActivity()V
    .locals 0

    .line 277
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeActivity()Landroid/app/Activity;

    .line 278
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 259
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 175
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    const-string v0, "lzqAf"

    const-string v1, "onStart"

    .line 83
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->initWebView()V

    return-void
.end method

.method public retry()V
    .locals 4

    const-string v0, "lzqWeb"

    const-string v1, "retry out"

    .line 159
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 265
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method public tipsInternet()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "tipsInterNet"

    .line 122
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
