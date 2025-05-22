.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "AfterSaleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$2;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
