.class public Lcom/powervision/base/dialog/BatteryErrorDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "BatteryErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mTextConfirm:Landroid/widget/TextView;

.field private mTextService:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private onDialogClick:Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->context:Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 27
    sget p1, Lcom/powervision/base/R$layout;->battery_error_dialog:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/powervision/base/R$id;->text_confirm:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextConfirm:Landroid/widget/TextView;

    .line 29
    sget p1, Lcom/powervision/base/R$id;->text_service:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextService:Landroid/widget/TextView;

    .line 30
    sget p1, Lcom/powervision/base/R$id;->text_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/BatteryErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextTitle:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextService:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 43
    sget v0, Lcom/powervision/base/R$id;->text_service:I

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->onDialogClick:Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;

    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;->onClickService()V

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Lcom/powervision/base/R$id;->text_confirm:I

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->onDialogClick:Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;

    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;->onClickOk()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnDialogClick(Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->onDialogClick:Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/base/dialog/BatteryErrorDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
