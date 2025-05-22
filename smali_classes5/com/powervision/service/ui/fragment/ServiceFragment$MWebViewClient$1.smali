.class Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->initErrorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;


# direct methods
.method constructor <init>(Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;->this$1:Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;->this$1:Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;

    iget-object p1, p1, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$200(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 191
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;->this$1:Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->access$602(Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;Z)Z

    return-void
.end method
