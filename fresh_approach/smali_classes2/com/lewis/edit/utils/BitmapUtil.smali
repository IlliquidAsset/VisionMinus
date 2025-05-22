.class public Lcom/lewis/edit/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapByText(Landroid/app/Activity;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 29
    sget p1, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 31
    sget p1, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 33
    sget p1, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    goto :goto_0

    .line 35
    :cond_2
    sget p1, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    .line 38
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 41
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 42
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 43
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47
    invoke-static {p1, p2, p0, v0}, Lcom/lewis/edit/utils/BitmapUtil;->layoutView(Landroid/view/View;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static layoutView(Landroid/view/View;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 56
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/high16 v1, -0x80000000

    .line 57
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 59
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 62
    sget p2, Lcom/lewis/edit/R$id;->text_title:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p0}, Lcom/lewis/edit/utils/BitmapUtil;->viewSaveToImage(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static viewConversionBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 93
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 98
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static viewSaveToImage(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/high16 v0, 0x100000

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    const/4 v0, -0x1

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 79
    invoke-static {p0}, Lcom/lewis/edit/utils/BitmapUtil;->viewConversionBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-object v0
.end method
