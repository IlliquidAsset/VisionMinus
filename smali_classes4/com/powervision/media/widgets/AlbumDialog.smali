.class public Lcom/powervision/media/widgets/AlbumDialog;
.super Landroid/app/Dialog;
.source "AlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/AlbumDialog$ClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/powervision/media/widgets/AlbumDialog$ClickListener;

.field private text_confirm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget v0, Lcom/powervision/media/R$style;->NoBgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/powervision/media/widgets/AlbumDialog;->text_confirm:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/AlbumDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    iget-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 54
    sget v0, Lcom/powervision/media/R$id;->text_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    sget v1, Lcom/powervision/media/R$id;->text_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/powervision/media/widgets/AlbumDialog;->text_confirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/powervision/media/widgets/AlbumDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 63
    sget v0, Lcom/powervision/media/R$style;->AnimBottom:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 69
    sget v0, Lcom/powervision/media/R$id;->text_cancel:I

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mListener:Lcom/powervision/media/widgets/AlbumDialog$ClickListener;

    invoke-interface {p1}, Lcom/powervision/media/widgets/AlbumDialog$ClickListener;->cancel()V

    goto :goto_0

    .line 72
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->text_confirm:I

    if-ne p1, v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mListener:Lcom/powervision/media/widgets/AlbumDialog$ClickListener;

    invoke-interface {p1}, Lcom/powervision/media/widgets/AlbumDialog$ClickListener;->confirm()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/powervision/media/R$layout;->media_album_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/AlbumDialog;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/AlbumDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setClickListener(Lcom/powervision/media/widgets/AlbumDialog$ClickListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/media/widgets/AlbumDialog;->mListener:Lcom/powervision/media/widgets/AlbumDialog$ClickListener;

    return-void
.end method
