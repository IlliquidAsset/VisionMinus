.class public Lcom/powervision/camera/views/HistogramDialog;
.super Landroid/app/Dialog;
.source "HistogramDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;
    }
.end annotation


# instance fields
.field private mTextCancel:Landroid/widget/TextView;

.field private mTextOK:Landroid/widget/TextView;

.field private onDialogActionListener:Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/powervision/camera/views/HistogramDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_dialog_histogram:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramDialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    invoke-direct {p0}, Lcom/powervision/camera/views/HistogramDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 28
    sget v0, Lcom/lewis/camera/R$id;->text_ok:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/HistogramDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/camera/views/HistogramDialog;->mTextOK:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/lewis/camera/R$id;->text_cancel:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/HistogramDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/camera/views/HistogramDialog;->mTextCancel:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramDialog;->mTextOK:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/camera/views/-$$Lambda$HistogramDialog$7oJOB-SBV0EDEbfYouOF0okmW8o;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/-$$Lambda$HistogramDialog$7oJOB-SBV0EDEbfYouOF0okmW8o;-><init>(Lcom/powervision/camera/views/HistogramDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramDialog;->mTextCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/camera/views/-$$Lambda$HistogramDialog$8D-chF74lB-joV3YNRFe4Geogq4;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/-$$Lambda$HistogramDialog$8D-chF74lB-joV3YNRFe4Geogq4;-><init>(Lcom/powervision/camera/views/HistogramDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$HistogramDialog(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramDialog;->onDialogActionListener:Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;->confirm()V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$init$1$HistogramDialog(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramDialog;->onDialogActionListener:Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;->cancel()V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramDialog;->dismiss()V

    return-void
.end method

.method public setOnDialogActionListener(Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/camera/views/HistogramDialog;->onDialogActionListener:Lcom/powervision/camera/views/HistogramDialog$OnDialogActionListener;

    return-void
.end method
