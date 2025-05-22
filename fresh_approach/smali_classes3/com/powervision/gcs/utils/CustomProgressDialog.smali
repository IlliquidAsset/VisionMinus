.class public Lcom/powervision/gcs/utils/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field private static dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static dimiss()V
    .locals 1

    .line 69
    sget-object v0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static getShowing()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnShowListener;)Lcom/powervision/gcs/utils/CustomProgressDialog;
    .locals 2

    .line 37
    sget-object v0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/powervision/gcs/utils/CustomProgressDialog;

    sget v1, Lcom/powervision/gcs/R$style;->Custom1_Progress:I

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/utils/CustomProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    .line 40
    :cond_0
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    sget v0, Lcom/powervision/gcs/R$layout;->layout_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->setContentView(I)V

    if-eqz p1, :cond_2

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    sget v0, Lcom/powervision/gcs/R$id;->tv_message:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    sget p1, Lcom/powervision/gcs/R$id;->tv_message:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_1
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p0, p2}, Lcom/powervision/gcs/utils/CustomProgressDialog;->setCancelable(Z)V

    .line 52
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p0, p3}, Lcom/powervision/gcs/utils/CustomProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p1, 0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 56
    sget-object p1, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p1, p4}, Lcom/powervision/gcs/utils/CustomProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 58
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 59
    sget-object p1, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/powervision/gcs/utils/CustomProgressDialog;->show()V

    .line 62
    sget-object p0, Lcom/powervision/gcs/utils/CustomProgressDialog;->dialog:Lcom/powervision/gcs/utils/CustomProgressDialog;

    return-object p0
.end method
