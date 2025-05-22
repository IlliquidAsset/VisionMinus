.class public Lcom/powervision/media/widgets/MediaTipDialog;
.super Landroid/app/Dialog;
.source "MediaTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogTipListener:Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;

.field private mButton:Landroid/widget/Button;

.field private mTextContent:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    sget p2, Lcom/powervision/media/R$layout;->media_tip_dialog:I

    invoke-virtual {p0, p2}, Lcom/powervision/media/widgets/MediaTipDialog;->setContentView(I)V

    .line 26
    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog;->context:Landroid/content/Context;

    .line 27
    sget p1, Lcom/powervision/media/R$id;->text_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mTextTitle:Landroid/widget/TextView;

    .line 28
    sget p1, Lcom/powervision/media/R$id;->text_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mTextContent:Landroid/widget/TextView;

    .line 30
    sget p1, Lcom/powervision/media/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mButton:Landroid/widget/Button;

    .line 32
    new-instance p2, Lcom/powervision/media/widgets/MediaTipDialog$1;

    invoke-direct {p2, p0}, Lcom/powervision/media/widgets/MediaTipDialog$1;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/widgets/MediaTipDialog;)Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->dialogTipListener:Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;

    return-object p0
.end method


# virtual methods
.method public setButtonOkText(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setButtonOkText(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonOkText(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContent(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/media/widgets/MediaTipDialog;->dialogTipListener:Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/media/widgets/MediaTipDialog;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
