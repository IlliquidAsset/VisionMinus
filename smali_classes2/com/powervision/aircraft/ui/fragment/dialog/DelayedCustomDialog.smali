.class public Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DelayedCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;
    }
.end annotation


# static fields
.field private static final DESC:Ljava/lang/String; = "desc"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private delayedCustomDialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

.field private desc:Ljava/lang/String;

.field private mCheck:Landroid/widget/CheckBox;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextContent:Landroid/widget/TextView;

.field private mTextOK:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field onDialogClickListener:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;
    .locals 3

    .line 36
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "desc"

    .line 39
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 150
    sget v0, Lcom/powervision/aircraft/R$id;->text_confirm:I

    if-ne p1, v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->onDialogClickListener:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;

    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;->confirm(Z)V

    goto :goto_0

    .line 154
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->text_cancel:I

    if-ne p1, v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->onDialogClickListener:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;

    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x1030074

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setStyle(II)V

    .line 76
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->type:I

    .line 78
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->desc:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 94
    sget p3, Lcom/powervision/aircraft/R$layout;->dialog_delayed_custom_layout:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x43aa0000    # 340.0f

    .line 124
    invoke-static {v1}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    .line 125
    invoke-static {v2}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v2

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 100
    sget v0, Lcom/powervision/aircraft/R$id;->text_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextTitle:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/powervision/aircraft/R$id;->text_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextContent:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/powervision/aircraft/R$id;->text_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextOK:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/powervision/aircraft/R$id;->text_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextCancel:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/powervision/aircraft/R$id;->check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mCheck:Landroid/widget/CheckBox;

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextOK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->type:I

    if-nez v0, :cond_0

    .line 109
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_89:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setTitle(I)V

    .line 110
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_90:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setContent(I)V

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setContent(I)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnDialogClickListener(Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->onDialogClickListener:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
