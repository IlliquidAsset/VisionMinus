.class public Lcom/powervision/base/dialog/CommonDialog;
.super Landroid/app/Dialog;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;
    }
.end annotation


# instance fields
.field private columnLineView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private imageIv:Landroid/widget/ImageView;

.field private imageResId:I

.field private isSingle:Z

.field private message:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;

.field private negative:Ljava/lang/String;

.field private negativeBn:Landroid/widget/Button;

.field public onClickBottomListener:Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;

.field private positive:Ljava/lang/String;

.field private positiveBn:Landroid/widget/Button;

.field private title:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    sget v0, Lcom/powervision/base/R$style;->custom_dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageResId:I

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/powervision/base/dialog/CommonDialog;->isSingle:Z

    .line 44
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->context:Landroid/content/Context;

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positiveBn:Landroid/widget/Button;

    new-instance v1, Lcom/powervision/base/dialog/CommonDialog$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/dialog/CommonDialog$1;-><init>(Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    new-instance v1, Lcom/powervision/base/dialog/CommonDialog$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/dialog/CommonDialog$2;-><init>(Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 152
    sget v0, Lcom/powervision/base/R$id;->negtive:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    .line 153
    sget v0, Lcom/powervision/base/R$id;->positive:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positiveBn:Landroid/widget/Button;

    .line 154
    sget v0, Lcom/powervision/base/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->titleTv:Landroid/widget/TextView;

    .line 155
    sget v0, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->messageTv:Landroid/widget/TextView;

    .line 156
    sget v0, Lcom/powervision/base/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageIv:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcom/powervision/base/R$id;->column_line:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->columnLineView:Landroid/view/View;

    return-void
.end method

.method private refreshView()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/base/dialog/CommonDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->messageTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/base/dialog/CommonDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positive:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positiveBn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/powervision/base/dialog/CommonDialog;->positive:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positiveBn:Landroid/widget/Button;

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negative:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/powervision/base/dialog/CommonDialog;->negative:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_2
    iget v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageResId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 125
    iget-object v3, p0, Lcom/powervision/base/dialog/CommonDialog;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :goto_3
    iget-boolean v0, p0, Lcom/powervision/base/dialog/CommonDialog;->isSingle:Z

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->columnLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negativeBn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->columnLineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/powervision/base/dialog/CommonDialog;->imageResId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNegative()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->negative:Ljava/lang/String;

    return-object v0
.end method

.method public getPositive()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->positive:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSingle()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/powervision/base/dialog/CommonDialog;->isSingle:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget p1, Lcom/powervision/base/R$layout;->custom_dialog_bg:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-direct {p0}, Lcom/powervision/base/dialog/CommonDialog;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/powervision/base/dialog/CommonDialog;->refreshView()V

    .line 71
    invoke-direct {p0}, Lcom/powervision/base/dialog/CommonDialog;->initEvent()V

    return-void
.end method

.method public setDialogTitle(I)Lcom/powervision/base/dialog/CommonDialog;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setDialogTitle(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setImageResId(I)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 248
    iput p1, p0, Lcom/powervision/base/dialog/CommonDialog;->imageResId:I

    return-object p0
.end method

.method public setMessage(I)Lcom/powervision/base/dialog/CommonDialog;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNegative(I)Lcom/powervision/base/dialog/CommonDialog;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setNegative(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegative(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->negative:Ljava/lang/String;

    return-object p0
.end method

.method public setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->onClickBottomListener:Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;

    return-object p0
.end method

.method public setPositive(I)Lcom/powervision/base/dialog/CommonDialog;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/powervision/base/dialog/CommonDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositive(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog;->positive:Ljava/lang/String;

    return-object p0
.end method

.method public setSingle(Z)Lcom/powervision/base/dialog/CommonDialog;
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/powervision/base/dialog/CommonDialog;->isSingle:Z

    return-object p0
.end method

.method public show()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 145
    invoke-direct {p0}, Lcom/powervision/base/dialog/CommonDialog;->refreshView()V

    return-void
.end method
