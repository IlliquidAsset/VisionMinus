.class public Lcom/powervision/gcs/view/ToggleImageButton;
.super Landroid/widget/ToggleButton;
.source "ToggleImageButton.java"


# instance fields
.field private drawableOff:Landroid/graphics/drawable/Drawable;

.field private drawableOn:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/ToggleImageButton;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->removeText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/ToggleImageButton;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->removeText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/ToggleImageButton;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->removeText()V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/powervision/gcs/R$styleable;->ToggleImageButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/powervision/gcs/R$styleable;->ToggleImageButton_tib_drawable_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOn:Landroid/graphics/drawable/Drawable;

    .line 61
    sget p2, Lcom/powervision/gcs/R$styleable;->ToggleImageButton_tib_drawable_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOff:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removeText()V
    .locals 1

    const-string v0, ""

    .line 49
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ToggleImageButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ToggleImageButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private syncDrawableState()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/ToggleImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOff:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ToggleImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 67
    invoke-super/range {p0 .. p5}, Landroid/widget/ToggleButton;->onLayout(ZIIII)V

    .line 68
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->syncDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 84
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->syncDrawableState()V

    return-void
.end method

.method public setDrawableOff(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOff:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->syncDrawableState()V

    return-void
.end method

.method public setDrawableOn(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/view/ToggleImageButton;->drawableOn:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-direct {p0}, Lcom/powervision/gcs/view/ToggleImageButton;->syncDrawableState()V

    return-void
.end method
