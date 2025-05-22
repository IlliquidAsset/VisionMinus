.class Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/service/ui/fragment/ServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebViewClient"
.end annotation


# instance fields
.field private errorBtn:Landroid/widget/Button;

.field private isInErrorState:Z

.field private layoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field final synthetic this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

.field webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method constructor <init>(Lcom/powervision/service/ui/fragment/ServiceFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 122
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$200(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->isInErrorState:Z

    return-void
.end method

.method static synthetic access$602(Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->isInErrorState:Z

    return p1
.end method

.method private initErrorView()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-virtual {v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    sget v2, Lcom/powervision/service/R$layout;->service_network_error_layout:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$302(Lcom/powervision/service/ui/fragment/ServiceFragment;Landroid/view/View;)Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/powervision/service/R$id;->network_error_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->errorBtn:Landroid/widget/Button;

    .line 187
    new-instance v1, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient$1;-><init>(Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onReceivedSslError$0(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 207
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$1(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$2(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 210
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 145
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 146
    iget-boolean p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->isInErrorState:Z

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 149
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->layoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 150
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p2, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p2}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$200(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/webkit/WebView;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->layoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$200(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:getUserAndLanguage(\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$400(Lcom/powervision/service/ui/fragment/ServiceFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$500(Lcom/powervision/service/ui/fragment/ServiceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->showErrorPage()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 160
    invoke-virtual {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->showErrorPage()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 202
    iget-object p1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-virtual {p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-virtual {p3}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "ssl\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    .line 206
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 207
    iget-object p3, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    sget v0, Lcom/powervision/service/R$string;->AP03_Upgrade_121:I

    invoke-virtual {p3, v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$33p5rrEo7adanU5b2dy5dRIaVkA;

    invoke-direct {v0, p2}, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$33p5rrEo7adanU5b2dy5dRIaVkA;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 208
    iget-object p3, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    sget v0, Lcom/powervision/service/R$string;->App_MediaLib_20:I

    invoke-virtual {p3, v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$1_BF54UbyYTAMPbSLveXkuwNbqc;

    invoke-direct {v0, p2}, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$1_BF54UbyYTAMPbSLveXkuwNbqc;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 209
    new-instance p3, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$rLaUhY-5RA6y2qL54Raxce4TnvY;

    invoke-direct {p3, p2}, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$rLaUhY-5RA6y2qL54Raxce4TnvY;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "weixin://wap/pay?"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    iget-object p2, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-virtual {p2, p1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 136
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    const-string v3, "http://wechatpay.powervision.me"

    .line 137
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v1
.end method

.method protected showErrorPage()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v0}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 172
    invoke-direct {p0}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->initErrorView()V

    .line 173
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->layoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 174
    iget-object v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->webParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->this$0:Lcom/powervision/service/ui/fragment/ServiceFragment;

    invoke-static {v1}, Lcom/powervision/service/ui/fragment/ServiceFragment;->access$300(Lcom/powervision/service/ui/fragment/ServiceFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->layoutParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->isInErrorState:Z

    :cond_0
    return-void
.end method
