.class public Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;
.super Ljava/lang/Object;
.source "ShipDeletePointWinow_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;

.field private viewc6f:Landroid/view/View;

.field private viewc9f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;Landroid/view/View;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->confirm_text:I

    const-string v1, "method \'confirm_text\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc9f:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->cancel_text:I

    const-string v1, "method \'cancel_text\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc6f:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;

    .line 51
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc9f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc9f:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc6f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow_ViewBinding;->viewc6f:Landroid/view/View;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
