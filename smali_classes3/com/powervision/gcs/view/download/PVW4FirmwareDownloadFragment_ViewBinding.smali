.class public Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment_ViewBinding;
.super Ljava/lang/Object;
.source "PVW4FirmwareDownloadFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment_ViewBinding;->target:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->tv_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvTitle:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->tv_size:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvSize\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSize:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->tv_progress_rate:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvProgressRate\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvProgressRate:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->pb_progress:I

    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "field \'pbProgress\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->ll_progress:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llProgress\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->llProgress:Landroid/widget/LinearLayout;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->tv_note:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvNote\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvNote:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->tv_cancel:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvCancel:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->s_divider:I

    const-class v1, Landroid/widget/Space;

    const-string v2, "field \'sDivider\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sDivider:Landroid/widget/Space;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->tv_sure:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvSure\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSure:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment_ViewBinding;->target:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment_ViewBinding;->target:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvTitle:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSize:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvProgressRate:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->llProgress:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvNote:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvCancel:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sDivider:Landroid/widget/Space;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSure:Landroid/widget/TextView;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
