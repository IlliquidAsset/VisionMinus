.class public Lcom/powervision/base/dialog/TempDialog;
.super Landroid/app/Dialog;
.source "TempDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/dialog/TempDialog$OnDialogClick;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mTextConfirm:Landroid/widget/TextView;

.field private mTextContent:Landroid/widget/TextView;

.field private onDialogClick:Lcom/powervision/base/dialog/TempDialog$OnDialogClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->context:Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    new-instance p1, Lcom/powervision/base/dialog/TempDialog$1;

    invoke-direct {p1, p0}, Lcom/powervision/base/dialog/TempDialog$1;-><init>(Lcom/powervision/base/dialog/TempDialog;)V

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog$OnDialogClick;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/base/dialog/TempDialog;->onDialogClick:Lcom/powervision/base/dialog/TempDialog$OnDialogClick;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 39
    sget p1, Lcom/powervision/base/R$layout;->temp_dialog:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->setContentView(I)V

    .line 40
    sget p1, Lcom/powervision/base/R$id;->text_confirm:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->mTextConfirm:Landroid/widget/TextView;

    .line 41
    sget p1, Lcom/powervision/base/R$id;->text_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/TempDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->mTextContent:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->mTextConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->onDialogClick:Lcom/powervision/base/dialog/TempDialog$OnDialogClick;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/powervision/base/dialog/TempDialog$OnDialogClick;->onClickOk()V

    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/base/dialog/TempDialog;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setOnDialogClick(Lcom/powervision/base/dialog/TempDialog$OnDialogClick;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/base/dialog/TempDialog;->onDialogClick:Lcom/powervision/base/dialog/TempDialog$OnDialogClick;

    return-void
.end method
