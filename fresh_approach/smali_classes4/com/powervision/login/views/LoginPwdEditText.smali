.class public Lcom/powervision/login/views/LoginPwdEditText;
.super Landroid/widget/LinearLayout;
.source "LoginPwdEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mHideIcon:Lcom/powervision/login/views/LoginShiftView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/powervision/login/views/LoginPwdEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/powervision/login/views/LoginPwdEditText;->setOrientation(I)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/powervision/login/views/LoginPwdEditText;->mDeleteIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginPwdEditText$LJm_aHd2nJ7YBt8XBOPQw3WYTP4;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginPwdEditText$LJm_aHd2nJ7YBt8XBOPQw3WYTP4;-><init>(Lcom/powervision/login/views/LoginPwdEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/login/views/LoginPwdEditText;->mHideIcon:Lcom/powervision/login/views/LoginShiftView;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginPwdEditText$bwNQPQw9i87cHpcwguq2D2l5rJs;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginPwdEditText$bwNQPQw9i87cHpcwguq2D2l5rJs;-><init>(Lcom/powervision/login/views/LoginPwdEditText;)V

    invoke-virtual {v0, v1}, Lcom/powervision/login/views/LoginShiftView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDeleteIcon(Ljava/lang/String;Z)V
    .locals 0

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mDeleteIcon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mDeleteIcon:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHideBtn(Z)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initListener$0$LoginPwdEditText(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initListener$1$LoginPwdEditText(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mHideIcon:Lcom/powervision/login/views/LoginShiftView;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginShiftView;->shift()V

    .line 65
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mHideIcon:Lcom/powervision/login/views/LoginShiftView;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginShiftView;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/login/views/LoginPwdEditText;->updateHideBtn(Z)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/powervision/login/views/LoginPwdEditText;->updateDeleteIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/powervision/login/views/LoginPwdEditText;->updateDeleteIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 37
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginPwdEditText;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginPwdEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/login/R$layout;->login_view_edittext_pwd:I

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget p1, Lcom/powervision/login/R$id;->delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/views/LoginPwdEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mDeleteIcon:Landroid/widget/ImageView;

    .line 45
    sget p1, Lcom/powervision/login/R$id;->pwd:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/views/LoginPwdEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/views/LoginShiftView;

    iput-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mHideIcon:Lcom/powervision/login/views/LoginShiftView;

    .line 46
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/LoginPwdEditText;->setAddStatesFromChildren(Z)V

    .line 48
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/login/views/LoginPwdEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/login/views/LoginPwdEditText;->updateDeleteIcon(Ljava/lang/String;Z)V

    .line 52
    iget-object p1, p0, Lcom/powervision/login/views/LoginPwdEditText;->mHideIcon:Lcom/powervision/login/views/LoginShiftView;

    invoke-virtual {p1, v1}, Lcom/powervision/login/views/LoginShiftView;->setChecked(Z)V

    .line 53
    invoke-direct {p0, v1}, Lcom/powervision/login/views/LoginPwdEditText;->updateHideBtn(Z)V

    .line 55
    invoke-direct {p0}, Lcom/powervision/login/views/LoginPwdEditText;->initListener()V

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "layout\u6587\u4ef6\u4e2d\u53ea\u9700\u8981\u4e00\u4e2aEditText\u4f5c\u4e3achild"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
