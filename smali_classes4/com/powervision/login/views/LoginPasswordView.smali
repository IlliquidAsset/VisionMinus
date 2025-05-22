.class public Lcom/powervision/login/views/LoginPasswordView;
.super Landroid/widget/RelativeLayout;
.source "LoginPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;
    }
.end annotation


# instance fields
.field private mOnLoginPasswordListener:Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;

.field private mPasswordCbHide:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private mPasswordEtPwd:Landroid/widget/EditText;

.field private mPasswordIvDelete:Landroid/widget/ImageView;

.field private mPasswordLoginViewLine:Landroid/view/View;

.field private mPasswordTvForgetPassword:Landroid/widget/TextView;

.field private mPasswordTvPwdErrorInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/powervision/login/views/LoginPasswordView;->initView()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordCbHide:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordIvDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginPasswordView$8I1gM8wrutIWdLCCF40CwU4jQdA;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginPasswordView$8I1gM8wrutIWdLCCF40CwU4jQdA;-><init>(Lcom/powervision/login/views/LoginPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordTvForgetPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginPasswordView$5KlQmrCxECjlSCojiGQTHLj37YI;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginPasswordView$5KlQmrCxECjlSCojiGQTHLj37YI;-><init>(Lcom/powervision/login/views/LoginPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/login/R$layout;->login_view_login_password_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    sget v0, Lcom/powervision/login/R$id;->password_et_pwd:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    .line 48
    sget v0, Lcom/powervision/login/R$id;->password_iv_delete:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordIvDelete:Landroid/widget/ImageView;

    .line 49
    sget v0, Lcom/powervision/login/R$id;->password_cb_hide:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordCbHide:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 50
    sget v0, Lcom/powervision/login/R$id;->password_tv_forget_password:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordTvForgetPassword:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/powervision/login/R$id;->password_tv_pwd_error_info:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordTvPwdErrorInfo:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/powervision/login/R$id;->password_login_view_line:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordLoginViewLine:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/powervision/login/views/LoginPasswordView;->initListener()V

    return-void
.end method

.method private updateDeleteIcon()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHideBtn(Z)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

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

.method public getText()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$initListener$0$LoginPasswordView(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initListener$1$LoginPasswordView(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mOnLoginPasswordListener:Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mOnLoginPasswordListener:Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;

    invoke-interface {p1}, Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;->onForgetPassword()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p2}, Lcom/powervision/login/views/LoginPasswordView;->updateHideBtn(Z)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/powervision/login/views/LoginPasswordView;->updateDeleteIcon()V

    if-eqz p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginPasswordView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/powervision/login/R$color;->blue:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginPasswordView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/powervision/login/R$color;->divider_line_color:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/powervision/login/views/LoginPasswordView;->updateDeleteIcon()V

    return-void
.end method

.method public setOnLoginPasswordListener(Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mOnLoginPasswordListener:Lcom/powervision/login/views/LoginPasswordView$OnLoginPasswordListener;

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordTvPwdErrorInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordTvPwdErrorInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateHintText(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/login/views/LoginPasswordView;->mPasswordEtPwd:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
