.class public Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/update/FirmwareUpdateDialog;

.field private viewf20:Landroid/view/View;

.field private viewf22:Landroid/view/View;

.field private viewf23:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/powervision/gcs/update/FirmwareUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog;Landroid/view/View;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateDialog;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->progress2:I

    const-string v1, "method \'progress2\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf20:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$1;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/powervision/gcs/R$id;->progress3:I

    const-string v1, "method \'progress3\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf22:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$2;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/powervision/gcs/R$id;->progress4:I

    const-string v1, "method \'progress4\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf23:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding$3;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateDialog;

    .line 66
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf20:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf20:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf22:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf22:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf23:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateDialog_ViewBinding;->viewf23:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
