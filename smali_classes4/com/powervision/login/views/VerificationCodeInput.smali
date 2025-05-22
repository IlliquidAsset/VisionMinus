.class public Lcom/powervision/login/views/VerificationCodeInput;
.super Landroid/view/ViewGroup;
.source "VerificationCodeInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOX_HEIGHT:I = 0x78

.field public static final DEFAULT_BOX_SIZE:I = 0x6

.field public static final DEFAULT_BOX_WIDTH:I = 0x78

.field public static final DEFAULT_TEXT_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "VerificationCodeInput"

.field private static final TYPE_NUMBER:Ljava/lang/String; = "number"

.field private static final TYPE_PASSWORD:Ljava/lang/String; = "password"

.field private static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field private static final TYPE_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private box:I

.field private boxBgFocus:Landroid/graphics/drawable/Drawable;

.field private boxBgNormal:Landroid/graphics/drawable/Drawable;

.field private boxHeight:I

.field private boxWidth:I

.field private childHPadding:I

.field private childVPadding:I

.field private inputType:I

.field private listener:Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object v0, Lcom/powervision/login/R$styleable;->VerificationCodeInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_box:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->box:I

    .line 60
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_child_h_padding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    .line 61
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_child_v_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->childVPadding:I

    .line 62
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_box_bg_focus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxBgFocus:Landroid/graphics/drawable/Drawable;

    .line 63
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_box_bg_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxBgNormal:Landroid/graphics/drawable/Drawable;

    .line 64
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_inputType:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->inputType:I

    .line 65
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_child_width:I

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxWidth:I

    .line 66
    sget p2, Lcom/powervision/login/R$styleable;->VerificationCodeInput_child_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxHeight:I

    .line 67
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->initViews()V

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/views/VerificationCodeInput;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->focus()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/login/views/VerificationCodeInput;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->checkAndCommit()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/login/views/VerificationCodeInput;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->backFocus()V

    return-void
.end method

.method private backFocus()V
    .locals 7

    .line 224
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/powervision/login/views/BackListenerEditText;

    .line 229
    invoke-virtual {v4}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 231
    invoke-virtual {v4, v3}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    .line 234
    invoke-virtual {v4}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    .line 235
    invoke-virtual {v4}, Lcom/powervision/login/views/BackListenerEditText;->requestFocus()Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_4

    .line 242
    invoke-virtual {p0, v4}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/powervision/login/views/BackListenerEditText;

    .line 243
    invoke-virtual {v5}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 244
    invoke-virtual {v5, v2}, Lcom/powervision/login/views/BackListenerEditText;->setCursorVisible(Z)V

    goto :goto_3

    .line 246
    :cond_2
    invoke-virtual {v5, v3}, Lcom/powervision/login/views/BackListenerEditText;->setCursorVisible(Z)V

    :goto_3
    if-eq v4, v1, :cond_3

    .line 249
    invoke-virtual {v5, v2}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    goto :goto_4

    .line 251
    :cond_3
    invoke-virtual {v5, v3}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private checkAndCommit()V
    .locals 6

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 297
    :goto_0
    iget v3, p0, Lcom/powervision/login/views/VerificationCodeInput;->box:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 298
    invoke-virtual {p0, v2}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/powervision/login/views/BackListenerEditText;

    .line 299
    invoke-virtual {v3}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 304
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 310
    iget-object v2, p0, Lcom/powervision/login/views/VerificationCodeInput;->listener:Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;->onComplete(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private focus()V
    .locals 7

    .line 257
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    .line 261
    invoke-virtual {p0, v3}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/powervision/login/views/BackListenerEditText;

    .line 262
    invoke-virtual {v5}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 264
    invoke-virtual {v5, v4}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    .line 265
    invoke-virtual {v5}, Lcom/powervision/login/views/BackListenerEditText;->requestFocus()Z

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 271
    invoke-virtual {p0, v3}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/powervision/login/views/BackListenerEditText;

    .line 272
    invoke-virtual {v5}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 273
    invoke-virtual {v5, v2}, Lcom/powervision/login/views/BackListenerEditText;->setCursorVisible(Z)V

    goto :goto_3

    .line 275
    :cond_2
    invoke-virtual {v5, v4}, Lcom/powervision/login/views/BackListenerEditText;->setCursorVisible(Z)V

    :goto_3
    if-eq v3, v1, :cond_3

    .line 278
    invoke-virtual {v5, v2}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    goto :goto_4

    .line 280
    :cond_3
    invoke-virtual {v5, v4}, Lcom/powervision/login/views/BackListenerEditText;->setEnabled(Z)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getScreenWidth()I
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 412
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initViews()V
    .locals 8

    .line 73
    new-instance v0, Lcom/powervision/login/views/VerificationCodeInput$1;

    invoke-direct {v0, p0}, Lcom/powervision/login/views/VerificationCodeInput$1;-><init>(Lcom/powervision/login/views/VerificationCodeInput;)V

    .line 114
    new-instance v1, Lcom/powervision/login/views/VerificationCodeInput$2;

    invoke-direct {v1, p0}, Lcom/powervision/login/views/VerificationCodeInput$2;-><init>(Lcom/powervision/login/views/VerificationCodeInput;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    :goto_0
    iget v4, p0, Lcom/powervision/login/views/VerificationCodeInput;->box:I

    if-ge v3, v4, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/powervision/login/R$layout;->login_view_verify_code_edit:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/powervision/login/views/BackListenerEditText;

    .line 136
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxWidth:I

    iget v7, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    iget v6, p0, Lcom/powervision/login/views/VerificationCodeInput;->childVPadding:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 138
    iget v6, p0, Lcom/powervision/login/views/VerificationCodeInput;->childVPadding:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 139
    iget v6, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 140
    iget v6, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x11

    .line 141
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    invoke-virtual {v4, v1}, Lcom/powervision/login/views/BackListenerEditText;->setBackSpaceListener(Lcom/powervision/login/views/TextInputConnection$BackspaceListener;)V

    const/high16 v7, -0x1000000

    .line 147
    invoke-virtual {v4, v7}, Lcom/powervision/login/views/BackListenerEditText;->setTextColor(I)V

    .line 149
    invoke-virtual {v4, v2}, Lcom/powervision/login/views/BackListenerEditText;->setTextIsSelectable(Z)V

    const/high16 v7, 0x41c00000    # 24.0f

    .line 150
    invoke-virtual {v4, v7}, Lcom/powervision/login/views/BackListenerEditText;->setTextSize(F)V

    .line 151
    invoke-virtual {v4, v5}, Lcom/powervision/login/views/BackListenerEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {v4, v6}, Lcom/powervision/login/views/BackListenerEditText;->setGravity(I)V

    .line 168
    invoke-virtual {v4, v3}, Lcom/powervision/login/views/BackListenerEditText;->setId(I)V

    .line 171
    invoke-virtual {v4, v0}, Lcom/powervision/login/views/BackListenerEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    invoke-virtual {p0, v4, v3}, Lcom/powervision/login/views/VerificationCodeInput;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->focus()V

    return-void
.end method

.method private setBg(Lcom/powervision/login/views/BackListenerEditText;Z)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerificationCodeInput"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxBgNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p1, v0}, Lcom/powervision/login/views/BackListenerEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/VerificationCodeInput;->boxBgFocus:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p1, v0}, Lcom/powervision/login/views/BackListenerEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/login/views/BackListenerEditText;

    .line 347
    invoke-virtual {v2}, Lcom/powervision/login/views/BackListenerEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->refocus()V

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 370
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout width = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 424
    invoke-virtual {p0, p3}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 426
    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    .line 428
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 429
    iget v1, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    add-int/2addr v1, p5

    mul-int v1, v1, p3

    add-int/2addr p5, v1

    .line 431
    iget v2, p0, Lcom/powervision/login/views/VerificationCodeInput;->childVPadding:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 433
    invoke-virtual {p4, v1, v2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 376
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 377
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getMeasuredWidth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getScreenWidth()I

    move-result v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 385
    invoke-virtual {p0, v3}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 386
    invoke-virtual {p0, v4, p1, p2}, Lcom/powervision/login/views/VerificationCodeInput;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    .line 389
    invoke-virtual {p0, v2}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, -0x2

    if-eq v0, v4, :cond_2

    mul-int v4, v3, v1

    sub-int/2addr v0, v4

    add-int/lit8 v4, v1, -0x1

    .line 393
    div-int/2addr v0, v4

    iput v0, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    .line 396
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 398
    iget v2, p0, Lcom/powervision/login/views/VerificationCodeInput;->childVPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    mul-int v3, v3, v1

    .line 399
    iget v2, p0, Lcom/powervision/login/views/VerificationCodeInput;->childHPadding:I

    add-int/lit8 v1, v1, -0x1

    mul-int v2, v2, v1

    add-int/2addr v3, v2

    .line 400
    invoke-static {v3, p1}, Lcom/powervision/login/views/VerificationCodeInput;->resolveSize(II)I

    move-result p1

    .line 401
    invoke-static {v0, p2}, Lcom/powervision/login/views/VerificationCodeInput;->resolveSize(II)I

    move-result p2

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/powervision/login/views/VerificationCodeInput;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method public refocus()V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/powervision/login/views/VerificationCodeInput;->focus()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 359
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnCompleteListener(Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput;->listener:Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;

    return-void
.end method

.method public setVerifyCode(Ljava/lang/String;)V
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcom/powervision/login/views/VerificationCodeInput;->getChildCount()I

    move-result v0

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/login/views/BackListenerEditText;

    .line 334
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/login/views/BackListenerEditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
