.class public Lcom/powervision/user/views/UserCenterDialog;
.super Landroid/app/Dialog;
.source "UserCenterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;
    }
.end annotation


# instance fields
.field private mInterface:Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    sget v0, Lcom/powervision/user/R$style;->user_noBgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UserCenterDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 47
    sget v0, Lcom/powervision/user/R$id;->text_take_photo:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UserCenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    sget v1, Lcom/powervision/user/R$id;->text_get_photo:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/views/UserCenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    sget v2, Lcom/powervision/user/R$id;->text_cancel:I

    invoke-virtual {p0, v2}, Lcom/powervision/user/views/UserCenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/user/views/UserCenterDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 59
    sget v1, Lcom/powervision/user/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 66
    sget v0, Lcom/powervision/user/R$id;->text_take_photo:I

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/powervision/user/views/UserCenterDialog;->mInterface:Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;

    invoke-interface {p1}, Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;->takePhoto()V

    goto :goto_0

    .line 69
    :cond_0
    sget v0, Lcom/powervision/user/R$id;->text_get_photo:I

    if-ne p1, v0, :cond_1

    .line 70
    iget-object p1, p0, Lcom/powervision/user/views/UserCenterDialog;->mInterface:Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;

    invoke-interface {p1}, Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;->getPhoto()V

    goto :goto_0

    .line 72
    :cond_1
    sget v0, Lcom/powervision/user/R$id;->text_cancel:I

    if-ne p1, v0, :cond_2

    .line 73
    iget-object p1, p0, Lcom/powervision/user/views/UserCenterDialog;->mInterface:Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;

    invoke-interface {p1}, Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/powervision/user/R$layout;->user_dialog_select_photo:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UserCenterDialog;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/powervision/user/views/UserCenterDialog;->init()V

    return-void
.end method

.method public setClickListener(Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/user/views/UserCenterDialog;->mInterface:Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;

    return-void
.end method
