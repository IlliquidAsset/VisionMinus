.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;

.field final synthetic val$mHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;->this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;->val$mHandler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 240
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 241
    iget-object p2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$3;->val$mHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
