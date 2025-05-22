.class public Lcom/powervision/media/widgets/CheckedImageView;
.super Landroid/view/View;
.source "CheckedImageView.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapHeight:I

.field bitmapWidth:I

.field height:I

.field mPaint:Landroid/graphics/Paint;

.field resId:I

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    .line 24
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->height:I

    .line 25
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapHeight:I

    .line 26
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    .line 31
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    .line 24
    iput v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->height:I

    .line 25
    iput v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapHeight:I

    .line 26
    iput v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    .line 31
    iput v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    .line 34
    sget-object v1, Lcom/powervision/media/R$styleable;->bigArea:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    sget p2, Lcom/powervision/media/R$styleable;->bigArea_imageSrc:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    :cond_0
    iget p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/CheckedImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    .line 24
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->height:I

    .line 25
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapHeight:I

    .line 26
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    .line 31
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    .line 24
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->height:I

    .line 25
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapHeight:I

    .line 26
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    .line 31
    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->resId:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    iget v2, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/powervision/media/widgets/CheckedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 58
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->width:I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->height:I

    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapWidth:I

    .line 82
    iget-object p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/CheckedImageView;->bitmapHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/powervision/media/widgets/CheckedImageView;->invalidate()V

    return-void
.end method
