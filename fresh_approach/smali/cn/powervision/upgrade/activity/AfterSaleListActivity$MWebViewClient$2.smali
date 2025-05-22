.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 231
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;->this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;->val$mHandler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$MWebViewClient$2;->val$mHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
