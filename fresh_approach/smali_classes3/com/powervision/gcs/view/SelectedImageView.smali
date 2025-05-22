.class public Lcom/powervision/gcs/view/SelectedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SelectedImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private isChecked:Z

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/SelectedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/SelectedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/SelectedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SelectedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/SelectedImageView;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    sget-object v0, Lcom/powervision/gcs/R$styleable;->SelectedImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/powervision/gcs/R$styleable;->SelectedImageView_select_src:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/SelectedImageView;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    sget p2, Lcom/powervision/gcs/R$styleable;->SelectedImageView_checked:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/SelectedImageView;->isChecked:Z

    .line 48
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SelectedImageView;->setChecked(Z)V

    .line 50
    iget-object p2, p0, Lcom/powervision/gcs/view/SelectedImageView;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/powervision/gcs/view/SelectedImageView;->isChecked:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/SelectedImageView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setImageSrc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SelectedImageView;->isChecked:Z

    return v0
.end method

.method public setCheckStatus(Z)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SelectedImageView;->setChecked(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SelectedImageView;->toggle()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/powervision/gcs/view/SelectedImageView;->isChecked:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SelectedImageView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/SelectedImageView;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/SelectedImageView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SelectedImageView;->mUnCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/SelectedImageView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
