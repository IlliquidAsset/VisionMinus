.class public Lcom/powervision/base/base/web/WebPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "WebPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/base/base/web/IWebView;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method back(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    if-lez p1, :cond_2

    .line 27
    invoke-virtual {p2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Landroid/webkit/WebView;->stopLoading()V

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
