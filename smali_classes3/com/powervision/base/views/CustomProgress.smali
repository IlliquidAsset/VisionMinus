.class public Lcom/powervision/base/views/CustomProgress;
.super Landroid/app/Dialog;
.source "CustomProgress.java"


# instance fields
.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/CustomProgress;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/CustomProgress;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;
    .locals 2

    .line 70
    new-instance v0, Lcom/powervision/base/views/CustomProgress;

    sget v1, Lcom/powervision/base/R$style;->Custom_Progress:I

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/views/CustomProgress;-><init>(Landroid/content/Context;I)V

    const-string p0, ""

    .line 71
    invoke-virtual {v0, p0}, Lcom/powervision/base/views/CustomProgress;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    sget p0, Lcom/powervision/base/R$layout;->progress_custom:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/CustomProgress;->setContentView(I)V

    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    sget p0, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    sget p0, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_1
    invoke-virtual {v0, p2}, Lcom/powervision/base/views/CustomProgress;->setCancelable(Z)V

    const/4 p0, 0x0

    .line 81
    invoke-virtual {v0, p0}, Lcom/powervision/base/views/CustomProgress;->setCanceledOnTouchOutside(Z)V

    .line 83
    invoke-virtual {v0, p3}, Lcom/powervision/base/views/CustomProgress;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p1, 0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    .line 89
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 90
    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 38
    sget p1, Lcom/powervision/base/R$id;->spinner_imageview:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    sget v0, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget v0, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 57
    :cond_0
    sget p1, Lcom/powervision/base/R$id;->message:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/CustomProgress;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/powervision/base/views/CustomProgress;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 102
    iget-object v0, p0, Lcom/powervision/base/views/CustomProgress;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 103
    iget-object v0, p0, Lcom/powervision/base/views/CustomProgress;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    :goto_0
    return-void
.end method
