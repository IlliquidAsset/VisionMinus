.class public Lcom/powervision/login/views/LoginEditText;
.super Landroid/widget/LinearLayout;
.source "LoginEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_EMAIL:I = 0x1

.field public static final INPUT_TYPE_PHONE:I = 0x2


# instance fields
.field private error_color:I

.field private error_icon:Landroid/graphics/drawable/Drawable;

.field private error_text:Ljava/lang/String;

.field private error_text_size:F

.field private hint_text:Ljava/lang/String;

.field private hint_text_color:I

.field private input_type:I

.field private mCountryCode:Ljava/lang/String;

.field private mLoginEditText:Landroid/widget/EditText;

.field private mLoginIndicatorIcon:Landroid/widget/ImageView;

.field private mLoginIndicatorText:Landroid/widget/TextView;

.field private mLoginIvDelete:Landroid/widget/ImageView;

.field private mLoginIvFlag:Landroid/widget/ImageView;

.field private mLoginLlCountry:Landroid/widget/LinearLayout;

.field private mLoginTvAreaCode:Landroid/widget/TextView;

.field private mLoginViewLine:Landroid/view/View;

.field private mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

.field private mPhoneCode:Ljava/lang/String;

.field private text_color:I

.field private text_size:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/powervision/login/views/LoginEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/login/views/LoginEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mPhoneCode:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mCountryCode:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/login/views/LoginEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private hideAndClearEditText()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 185
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->hideError()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/login/R$layout;->login_view_login_edit_text:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v0, Lcom/powervision/login/R$id;->login_edit_text:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    .line 75
    sget v0, Lcom/powervision/login/R$id;->login_view_line:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    .line 76
    sget v0, Lcom/powervision/login/R$id;->login_indicator_icon:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorIcon:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/powervision/login/R$id;->login_indicator_text:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/powervision/login/R$id;->login_ll_country:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/powervision/login/R$id;->login_iv_flag:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvFlag:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/powervision/login/R$id;->login_tv_area_code:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginTvAreaCode:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/powervision/login/R$id;->login_iv_delete:I

    invoke-virtual {p0, v0}, Lcom/powervision/login/views/LoginEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvDelete:Landroid/widget/ImageView;

    .line 83
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->initListener()V

    .line 85
    sget-object v0, Lcom/powervision/login/R$styleable;->LoginEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    sget p3, Lcom/powervision/login/R$styleable;->LoginEditText_android_textSize:I

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/powervision/login/views/LoginEditText;->text_size:F

    .line 88
    sget p3, Lcom/powervision/login/R$styleable;->LoginEditText_android_textColor:I

    sget v0, Lcom/powervision/login/R$color;->black_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/login/views/LoginEditText;->text_color:I

    .line 89
    sget p3, Lcom/powervision/login/R$styleable;->LoginEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/powervision/login/views/LoginEditText;->hint_text:Ljava/lang/String;

    .line 90
    sget p3, Lcom/powervision/login/R$styleable;->LoginEditText_android_textColorHint:I

    sget v0, Lcom/powervision/login/R$color;->light_gray_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/login/views/LoginEditText;->hint_text_color:I

    .line 91
    sget p3, Lcom/powervision/login/R$styleable;->LoginEditText_error_color:I

    sget v0, Lcom/powervision/login/R$color;->error_red:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/login/views/LoginEditText;->error_color:I

    .line 92
    sget p1, Lcom/powervision/login/R$styleable;->LoginEditText_error_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/login/views/LoginEditText;->error_text:Ljava/lang/String;

    .line 93
    sget p1, Lcom/powervision/login/R$styleable;->LoginEditText_error_text_size:I

    const/16 p3, 0xc

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/login/views/LoginEditText;->error_text_size:F

    .line 94
    sget p1, Lcom/powervision/login/R$styleable;->LoginEditText_error_icon:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/login/views/LoginEditText;->error_icon:Landroid/graphics/drawable/Drawable;

    .line 95
    sget p1, Lcom/powervision/login/R$styleable;->LoginEditText_input_type:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    .line 98
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->text_size:F

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 99
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->text_color:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 100
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->hint_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->hint_text_color:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 103
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->error_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->error_text_size:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->error_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->error_color:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget p1, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    .line 112
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    :goto_0
    const-string p1, "86"

    const-string p3, "CN"

    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/powervision/login/views/LoginEditText;->setPhoneCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->setEmailType()V

    .line 118
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginEditText$U5dJVXQjBoSIYEtiVqLUKto7Wmo;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginEditText$U5dJVXQjBoSIYEtiVqLUKto7Wmo;-><init>(Lcom/powervision/login/views/LoginEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/powervision/login/views/-$$Lambda$LoginEditText$eP8olxK6qar5HpLlXjgMHJEdaJA;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/-$$Lambda$LoginEditText$eP8olxK6qar5HpLlXjgMHJEdaJA;-><init>(Lcom/powervision/login/views/LoginEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDeleteIcon()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->hideError()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCode()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mPhoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideError()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$color;->blue:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$color;->divider_line_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isEmail()Z
    .locals 2

    .line 222
    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPhone()Z
    .locals 2

    .line 231
    iget v0, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$initListener$0$LoginEditText(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->hideAndClearEditText()V

    return-void
.end method

.method public synthetic lambda$initListener$1$LoginEditText(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

    invoke-interface {p1}, Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;->onSelectClick()V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->updateDeleteIcon()V

    if-eqz p2, :cond_0

    .line 260
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/powervision/login/R$color;->blue:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->getContext()Landroid/content/Context;

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

    .line 245
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->updateDeleteIcon()V

    .line 246
    iget-object p2, p0, Lcom/powervision/login/views/LoginEditText;->mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

    invoke-static {p2}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 247
    iget-object p2, p0, Lcom/powervision/login/views/LoginEditText;->mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;->onTextChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEmailType()V
    .locals 2

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    .line 168
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 169
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_35:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 170
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->hideAndClearEditText()V

    return-void
.end method

.method public setOnLoginEditTextListener(Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mOnLoginEditTextListener:Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;

    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mPhoneCode:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginEditText;->hideError()V

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mPhoneCode:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/powervision/login/views/LoginEditText;->mCountryCode:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginTvAreaCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/country_icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".webp"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 161
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/powervision/login/R$color;->white:I

    .line 162
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    sget v0, Lcom/powervision/login/R$color;->white:I

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIvFlag:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public setPhoneType()V
    .locals 2

    const/4 v0, 0x2

    .line 175
    iput v0, p0, Lcom/powervision/login/views/LoginEditText;->input_type:I

    .line 176
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 177
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginEditText:Landroid/widget/EditText;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_60:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 178
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginLlCountry:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/powervision/login/views/LoginEditText;->hideAndClearEditText()V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginViewLine:Landroid/view/View;

    iget v1, p0, Lcom/powervision/login/views/LoginEditText;->error_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/powervision/login/views/LoginEditText;->mLoginIndicatorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
