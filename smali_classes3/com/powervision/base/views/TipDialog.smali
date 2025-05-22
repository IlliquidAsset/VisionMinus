.class public Lcom/powervision/base/views/TipDialog;
.super Landroid/app/Dialog;
.source "TipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/TipDialog$DialogTipClickListener;
    }
.end annotation


# static fields
.field public static final BUTTON_BOTH_FLAG:I = 0x1

.field public static final BUTTON_LEFT_FLAG:I = 0x2

.field public static final BUTTON_RIGHT_FLAG:I = 0x3


# instance fields
.field private mBtnSelectType:I

.field private mCancelStr:Ljava/lang/String;

.field private mConfirmStr:Ljava/lang/String;

.field private mLineTip:Landroid/view/View;

.field private mTileStr:Ljava/lang/String;

.field private mTipListener:Lcom/powervision/base/views/TipDialog$DialogTipClickListener;

.field private mTipStr:Ljava/lang/String;

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvConfirm:Landroid/widget/TextView;

.field private mTvTip:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V
    .locals 1

    .line 37
    sget v0, Lcom/powervision/base/R$style;->TranslucentNoTitle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lcom/powervision/base/views/TipDialog;->mTileStr:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/powervision/base/views/TipDialog;->mTipStr:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/powervision/base/views/TipDialog;->mBtnSelectType:I

    .line 41
    iput-object p5, p0, Lcom/powervision/base/views/TipDialog;->mTipListener:Lcom/powervision/base/views/TipDialog$DialogTipClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/powervision/base/views/TipDialog$DialogTipClickListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p7

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    .line 47
    iput-object p5, p0, Lcom/powervision/base/views/TipDialog;->mCancelStr:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/powervision/base/views/TipDialog;->mConfirmStr:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTileStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 80
    iget-object v2, p0, Lcom/powervision/base/views/TipDialog;->mTvTitle:Landroid/widget/TextView;

    const-string v3, ""

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/powervision/base/views/TipDialog;->mTileStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/powervision/base/views/TipDialog;->mTvTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTipStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 83
    iget-object v2, p0, Lcom/powervision/base/views/TipDialog;->mTvTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/powervision/base/views/TipDialog;->mTipStr:Ljava/lang/String;

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/powervision/base/views/TipDialog;->mTvTip:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    iget-object v1, p0, Lcom/powervision/base/views/TipDialog;->mTvTip:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget v0, p0, Lcom/powervision/base/views/TipDialog;->mBtnSelectType:I

    invoke-direct {p0, v0}, Lcom/powervision/base/views/TipDialog;->setButtonSelect(I)V

    .line 87
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mCancelStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/base/views/TipDialog;->mCancelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mConfirmStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/base/views/TipDialog;->mConfirmStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private initListener()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 60
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvTitle:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_tip:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvTip:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/powervision/base/R$id;->view_dialog_corner_line:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/views/TipDialog;->mLineTip:Landroid/view/View;

    .line 63
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_confirm:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvConfirm:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_cancel:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/powervision/base/views/TipDialog;->initListener()V

    .line 68
    invoke-direct {p0}, Lcom/powervision/base/views/TipDialog;->initData()V

    .line 70
    invoke-virtual {p0}, Lcom/powervision/base/views/TipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 74
    sget v1, Lcom/powervision/base/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method private setButtonSelect(I)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/powervision/base/views/TipDialog;->mTvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/powervision/base/views/TipDialog;->mLineTip:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mLineTip:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mLineTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mLineTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 127
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_confirm:I

    if-ne v0, p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mTipListener:Lcom/powervision/base/views/TipDialog$DialogTipClickListener;

    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Lcom/powervision/base/views/TipDialog$DialogTipClickListener;->onTipConfirm()V

    goto :goto_0

    .line 131
    :cond_0
    sget v0, Lcom/powervision/base/R$id;->tv_dialog_corner_cancel:I

    if-ne v0, p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/powervision/base/views/TipDialog;->mTipListener:Lcom/powervision/base/views/TipDialog$DialogTipClickListener;

    if-eqz p1, :cond_1

    .line 133
    invoke-interface {p1}, Lcom/powervision/base/views/TipDialog$DialogTipClickListener;->onTipCancel()V

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/TipDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcom/powervision/base/R$layout;->dialog_layout_corner_tip:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/TipDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/TipDialog;->setCancelable(Z)V

    .line 56
    invoke-direct {p0}, Lcom/powervision/base/views/TipDialog;->initView()V

    return-void
.end method
