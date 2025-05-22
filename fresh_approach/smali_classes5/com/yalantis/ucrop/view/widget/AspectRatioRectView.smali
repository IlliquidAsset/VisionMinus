.class public Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "AspectRatioRectView.java"


# instance fields
.field private mAspectRatio:F

.field private mAspectRatioTitle:Ljava/lang/String;

.field private mAspectRatioX:F

.field private mAspectRatioY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p3, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private applyActiveColor(I)V
    .locals 7

    .line 106
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a1

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    aput v6, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v6

    .line 113
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 4

    const/16 v0, 0x11

    .line 82
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setGravity(I)V

    .line 84
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioTitle:Ljava/lang/String;

    .line 85
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_x:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    .line 87
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_AspectRatioTextView_ucrop_artv_ratio_y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    .line 90
    iget v2, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_1

    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v2, v0

    .line 94
    iput v2, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    .line 97
    :goto_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setTitle()V

    .line 99
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 100
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->applyActiveColor(I)V

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setDrawable(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 141
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_11_selector:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 143
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_23_selector:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 145
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_32_selector:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    .line 147
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_34_selector:I

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 149
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_43_selector:I

    goto :goto_0

    :cond_4
    const/16 p2, 0x9

    if-ne p1, p2, :cond_5

    .line 151
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_916_selector:I

    goto :goto_0

    :cond_5
    const/16 p2, 0x10

    if-ne p1, p2, :cond_6

    .line 153
    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_ratio_169_selector:I

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_7

    goto :goto_1

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p2}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setTitle()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d:%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setDrawable(II)V

    :goto_0
    return-void
.end method

.method private toggleAspectRatio()V
    .locals 2

    .line 120
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    .line 122
    iget v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    .line 123
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    div-float/2addr v1, v0

    .line 125
    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    :cond_0
    return-void
.end method


# virtual methods
.method public getAspectRatio(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->toggleAspectRatio()V

    .line 71
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setTitle()V

    .line 73
    :cond_0
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setActiveColor(I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->applyActiveColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->invalidate()V

    return-void
.end method

.method public setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioTitle:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    .line 57
    invoke-virtual {p1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioY:F

    .line 59
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatioX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, p1

    .line 63
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iput v1, p0, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->mAspectRatio:F

    .line 65
    :goto_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setTitle()V

    return-void
.end method
