.class public Lcom/powervision/base/views/AirDialog;
.super Landroid/app/Dialog;
.source "AirDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/AirDialog$DialogClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/powervision/base/views/AirDialog$DialogClickListener;

.field private context:Landroid/content/Context;

.field private line:Landroid/view/View;

.field private mTextContent:Landroid/widget/TextView;

.field private mTextLeft:Landroid/widget/TextView;

.field private mTextRight:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/AirDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 21
    sget p2, Lcom/powervision/base/R$style;->BaseDialog:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/powervision/base/views/AirDialog;->context:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/views/AirDialog;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/views/AirDialog;)Lcom/powervision/base/views/AirDialog$DialogClickListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/powervision/base/views/AirDialog;->clickListener:Lcom/powervision/base/views/AirDialog$DialogClickListener;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 27
    sget v0, Lcom/powervision/base/R$layout;->dialog_air:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->setContentView(I)V

    .line 28
    sget v0, Lcom/powervision/base/R$id;->text_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextLeft:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/powervision/base/R$id;->text_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextRight:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/base/R$id;->view_line:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/views/AirDialog;->line:Landroid/view/View;

    .line 31
    sget v0, Lcom/powervision/base/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/base/R$id;->text_content:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AirDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextContent:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextLeft:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/base/views/AirDialog$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/AirDialog$1;-><init>(Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextRight:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/base/views/AirDialog$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/AirDialog$2;-><init>(Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setButtonCancelText(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AirDialog;->setButtonCancelText(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonCancelText(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog;->mTextLeft:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog;->line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setButtonOkText(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AirDialog;->setButtonOkText(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonOkText(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog;->mTextLeft:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog;->line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setClickListener(Lcom/powervision/base/views/AirDialog$DialogClickListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/base/views/AirDialog;->clickListener:Lcom/powervision/base/views/AirDialog$DialogClickListener;

    return-void
.end method

.method public setContent(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AirDialog;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/base/views/AirDialog;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
