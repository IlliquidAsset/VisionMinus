.class public Lcom/powervision/base/views/DotIndicator;
.super Landroid/view/View;
.source "DotIndicator.java"


# instance fields
.field private mCenterX:F

.field private mCy:F

.field private mDotCount:I

.field private mDotSize:I

.field private mIndex:I

.field private mNormal:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/DotIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/DotIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 27
    iput p3, p0, Lcom/powervision/base/views/DotIndicator;->mIndex:I

    .line 43
    sget-object p3, Lcom/powervision/base/R$styleable;->DotIndicator:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 44
    sget p3, Lcom/powervision/base/R$styleable;->DotIndicator_dotCount:I

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/base/views/DotIndicator;->mDotCount:I

    .line 45
    sget p3, Lcom/powervision/base/R$styleable;->DotIndicator_dotSize:I

    const/16 v0, 0xc

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/base/views/DotIndicator;->mDotSize:I

    .line 46
    sget p3, Lcom/powervision/base/R$styleable;->DotIndicator_selected:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/DotIndicator;->mSelected:I

    .line 47
    sget p1, Lcom/powervision/base/R$styleable;->DotIndicator_normal:I

    const-string p3, "#666666"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/DotIndicator;->mNormal:I

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/base/views/DotIndicator;->mPaint:Landroid/graphics/Paint;

    .line 51
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget v1, p0, Lcom/powervision/base/views/DotIndicator;->mDotCount:I

    if-ge v0, v1, :cond_1

    .line 78
    iget v1, p0, Lcom/powervision/base/views/DotIndicator;->mIndex:I

    if-ne v1, v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/powervision/base/views/DotIndicator;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/DotIndicator;->mSelected:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/powervision/base/views/DotIndicator;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/DotIndicator;->mNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :goto_1
    iget v1, p0, Lcom/powervision/base/views/DotIndicator;->mCenterX:F

    iget v2, p0, Lcom/powervision/base/views/DotIndicator;->mDotSize:I

    iget v3, p0, Lcom/powervision/base/views/DotIndicator;->mDotCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-int/lit8 v3, v0, 0x3

    mul-int v3, v3, v2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 87
    iget v3, p0, Lcom/powervision/base/views/DotIndicator;->mCy:F

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/powervision/base/views/DotIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 60
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p0, Lcom/powervision/base/views/DotIndicator;->mCy:F

    .line 61
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/DotIndicator;->mCenterX:F

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/powervision/base/views/DotIndicator;->mIndex:I

    .line 71
    invoke-virtual {p0}, Lcom/powervision/base/views/DotIndicator;->invalidate()V

    return-void
.end method
