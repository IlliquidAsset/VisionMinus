.class public Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;
.super Ljava/lang/Object;
.source "FirmwareUpdateRemindDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

.field private viewbbb:Landroid/view/View;

.field private viewbbc:Landroid/view/View;

.field private viewced:Landroid/view/View;

.field private viewcef:Landroid/view/View;

.field private viewfba:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;Landroid/view/View;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->selectBtn:I

    const-string v1, "method \'selectBtn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewfba:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$1;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->doubleCancelBtn:I

    const-string v1, "method \'doubleCancelBtn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewced:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/powervision/gcs/R$id;->doubleSureBtn:I

    const-string v1, "method \'doubleSureBtn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewcef:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$3;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->SingleCancelBtn:I

    const-string v1, "method \'SingleCancelBtn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbb:Landroid/view/View;

    .line 64
    new-instance v1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$4;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/powervision/gcs/R$id;->SingleSureBtn:I

    const-string v1, "method \'SingleSureBtn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbc:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$5;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

    .line 87
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewfba:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewfba:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewced:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewced:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewcef:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewcef:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbb:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbb:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v0, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;->viewbbc:Landroid/view/View;

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
