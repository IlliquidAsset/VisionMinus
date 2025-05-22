.class Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;
.super Ljava/lang/Object;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/ui/fragment/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LewisJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/fragment/WebViewFragment;


# direct methods
.method private constructor <init>(Lcom/powervision/login/ui/fragment/WebViewFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;->this$0:Lcom/powervision/login/ui/fragment/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/login/ui/fragment/WebViewFragment;Lcom/powervision/login/ui/fragment/WebViewFragment$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/powervision/login/ui/fragment/WebViewFragment$LewisJavascriptInterface;-><init>(Lcom/powervision/login/ui/fragment/WebViewFragment;)V

    return-void
.end method


# virtual methods
.method public showBigImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "webview"

    .line 120
    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
