.class Lcom/powervision/service/ui/fragment/ServiceFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "ServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/service/ui/fragment/ServiceFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;


# direct methods
.method constructor <init>(Lcom/powervision/service/ui/fragment/ServiceFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$1;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

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

    .line 109
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$1;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1, p2}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$002(Lcom/powervision/service/ui/fragment/ServiceFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 110
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$1;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$100(Lcom/powervision/service/ui/fragment/ServiceFragment;)V

    const/4 p1, 0x1

    return p1
.end method
