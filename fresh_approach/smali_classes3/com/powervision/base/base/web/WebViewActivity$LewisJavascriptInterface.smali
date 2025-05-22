.class Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/base/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LewisJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/web/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;->this$0:Lcom/powervision/base/base/web/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/base/web/WebViewActivity;Lcom/powervision/base/base/web/WebViewActivity$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/powervision/base/base/web/WebViewActivity$LewisJavascriptInterface;-><init>(Lcom/powervision/base/base/web/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public showBigImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "webview"

    .line 273
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
