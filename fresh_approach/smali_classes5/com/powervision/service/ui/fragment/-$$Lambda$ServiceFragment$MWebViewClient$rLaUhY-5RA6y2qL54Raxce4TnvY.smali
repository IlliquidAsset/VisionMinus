.class public final synthetic Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$rLaUhY-5RA6y2qL54Raxce4TnvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/SslErrorHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$rLaUhY-5RA6y2qL54Raxce4TnvY;->f$0:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/powervision/service/ui/fragment/-$$Lambda$ServiceFragment$MWebViewClient$rLaUhY-5RA6y2qL54Raxce4TnvY;->f$0:Landroid/webkit/SslErrorHandler;

    invoke-static {v0, p1, p2, p3}, Lcom/powervision/service/ui/fragment/ServiceFragment$MWebViewClient;->lambda$onReceivedSslError$2(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
