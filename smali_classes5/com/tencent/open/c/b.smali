.class public Lcom/tencent/open/c/b;
.super Landroid/webkit/WebView;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/tencent/open/c/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v0, "searchBoxJavaBridge_"

    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/open/c/b;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 33
    invoke-virtual {p0, v0}, Lcom/tencent/open/c/b;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 34
    invoke-virtual {p0, v0}, Lcom/tencent/open/c/b;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 40
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 41
    invoke-virtual {p0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 47
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "searchBoxJavaBridge_"

    aput-object v2, v1, v5

    .line 50
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
