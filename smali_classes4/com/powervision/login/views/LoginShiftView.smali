.class public Lcom/powervision/login/views/LoginShiftView;
.super Landroid/view/View;
.source "LoginShiftView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/views/LoginShiftView$SavedState;,
        Lcom/powervision/login/views/LoginShiftView$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private checked:Z

.field private checkedDrawable:Landroid/graphics/drawable/Drawable;

.field private img:Landroid/widget/ImageView;

.field private uncheckedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/powervision/login/views/LoginShiftView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/powervision/login/views/LoginShiftView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/powervision/login/R$styleable;->LoginShiftView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 34
    sget v0, Lcom/powervision/login/R$styleable;->LoginShiftView_shiftChecked:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/login/views/LoginShiftView;->checked:Z

    .line 35
    sget v0, Lcom/powervision/login/R$styleable;->LoginShiftView_checkedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    sget v0, Lcom/powervision/login/R$styleable;->LoginShiftView_uncheckedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->uncheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    .line 38
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    iget-boolean p1, p0, Lcom/powervision/login/views/LoginShiftView;->checked:Z

    invoke-direct {p0, p1}, Lcom/powervision/login/views/LoginShiftView;->shift(Z)V

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private shift(Z)V
    .locals 1

    .line 53
    iput-boolean p1, p0, Lcom/powervision/login/views/LoginShiftView;->checked:Z

    .line 54
    iget-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/login/views/LoginShiftView;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/LoginShiftView;->uncheckedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginShiftView;->invalidate()V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/powervision/login/views/LoginShiftView;->checked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 72
    iget-object p1, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 78
    iget-object p1, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lcom/powervision/login/views/LoginShiftView;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 133
    check-cast p1, Lcom/powervision/login/views/LoginShiftView$SavedState;

    .line 135
    invoke-virtual {p1}, Lcom/powervision/login/views/LoginShiftView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    iget-boolean p1, p1, Lcom/powervision/login/views/LoginShiftView$SavedState;->checked:Z

    invoke-direct {p0, p1}, Lcom/powervision/login/views/LoginShiftView;->shift(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginShiftView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/powervision/login/views/LoginShiftView$SavedState;

    invoke-direct {v1, v0}, Lcom/powervision/login/views/LoginShiftView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 127
    invoke-virtual {p0}, Lcom/powervision/login/views/LoginShiftView;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/powervision/login/views/LoginShiftView$SavedState;->checked:Z

    return-object v1
.end method

.method public setChecked(Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/login/views/LoginShiftView;->shift(Z)V

    return-void
.end method

.method public shift()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/powervision/login/views/LoginShiftView;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/powervision/login/views/LoginShiftView;->shift(Z)V

    return-void
.end method
