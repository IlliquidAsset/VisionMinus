.class public Lcom/powervision/gcs/view/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/DialogUtils$OnCheckedChangeListener;,
        Lcom/powervision/gcs/view/DialogUtils$OnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewUiDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    .line 544
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/powervision/gcs/R$style;->dialog_change_clarity:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 546
    sget v0, Lcom/powervision/gcs/R$layout;->alertdialog_new_public:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setContentView(I)V

    .line 547
    sget v0, Lcom/powervision/gcs/R$id;->contenLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 548
    sget v0, Lcom/powervision/gcs/R$id;->buttonLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 552
    sget v0, Lcom/powervision/gcs/R$id;->titleTv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    sget v1, Lcom/powervision/gcs/R$id;->contentTv:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 554
    sget v2, Lcom/powervision/gcs/R$id;->yesBtn:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 555
    sget v3, Lcom/powervision/gcs/R$id;->cancelBtn:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    const-string v5, ""

    if-nez p1, :cond_0

    .line 558
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 560
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 563
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 564
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 565
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 568
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    sget p1, Lcom/powervision/gcs/R$drawable;->dialog_cancel_big:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 570
    :cond_4
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 571
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    if-nez p4, :cond_6

    .line 574
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    sget p1, Lcom/powervision/gcs/R$drawable;->dialog_done_big:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 576
    :cond_6
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 577
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    if-nez p5, :cond_8

    .line 580
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$5;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/DialogUtils$5;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 587
    :cond_8
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$6;

    invoke-direct {p1, p5, v2, p0}, Lcom/powervision/gcs/view/DialogUtils$6;-><init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    if-nez p6, :cond_9

    .line 596
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$7;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/DialogUtils$7;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 603
    :cond_9
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$8;

    invoke-direct {p1, p6, v3, p0}, Lcom/powervision/gcs/view/DialogUtils$8;-><init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p0
.end method

.method public static createTipDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    .line 394
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 396
    sget v0, Lcom/powervision/gcs/R$layout;->alertdialog_public:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setContentView(I)V

    .line 397
    sget v0, Lcom/powervision/gcs/R$id;->contenLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 398
    sget v0, Lcom/powervision/gcs/R$id;->buttonLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 402
    sget v0, Lcom/powervision/gcs/R$id;->titleTv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    sget v1, Lcom/powervision/gcs/R$id;->contentTv:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 404
    sget v2, Lcom/powervision/gcs/R$id;->yesBtn:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    sget v3, Lcom/powervision/gcs/R$id;->cancelBtn:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    const-string v5, ""

    if-nez p1, :cond_0

    .line 408
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 410
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 413
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 415
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 418
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    sget p1, Lcom/powervision/gcs/R$drawable;->dialog_cancel_big:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 420
    :cond_4
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 421
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    if-nez p4, :cond_6

    .line 424
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    sget p1, Lcom/powervision/gcs/R$drawable;->dialog_done_big:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 426
    :cond_6
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 427
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    if-nez p5, :cond_8

    .line 430
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/DialogUtils$1;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 437
    :cond_8
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$2;

    invoke-direct {p1, p5, v2, p0}, Lcom/powervision/gcs/view/DialogUtils$2;-><init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    if-nez p6, :cond_9

    .line 446
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/DialogUtils$3;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 453
    :cond_9
    new-instance p1, Lcom/powervision/gcs/view/DialogUtils$4;

    invoke-direct {p1, p6, v2, p0}, Lcom/powervision/gcs/view/DialogUtils$4;-><init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p0
.end method
