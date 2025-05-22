.class Lcom/powervision/base/views/widget/SimpleWheelDecoration;
.super Lcom/powervision/base/views/widget/WheelDecoration;
.source "SimpleWheelDecoration.java"


# instance fields
.field private final adapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

.field private final dividerPaint:Landroid/graphics/Paint;

.field private final dividerSize:I

.field private final paint:Landroid/graphics/Paint;

.field private final textColor:I

.field private final textColorCenter:I

.field private final textHeight:F


# direct methods
.method constructor <init>(Lcom/powervision/base/views/widget/WheelViewAdapter;IIIFII)V
    .locals 1

    .line 26
    iget p6, p1, Lcom/powervision/base/views/widget/WheelViewAdapter;->itemCount:I

    iget v0, p1, Lcom/powervision/base/views/widget/WheelViewAdapter;->itemSize:I

    invoke-direct {p0, p6, v0, p2}, Lcom/powervision/base/views/widget/WheelDecoration;-><init>(III)V

    .line 27
    iput p3, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textColor:I

    .line 28
    iput p4, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textColorCenter:I

    .line 29
    iput p7, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerSize:I

    .line 30
    iput-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->adapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    iget-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 37
    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    iput p3, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textHeight:F

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 7

    .line 55
    iget v0, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerSize:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget v0, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerSize:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 60
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v5, v0, p3

    .line 61
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v5, v0, p3

    .line 63
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    iget-object v6, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerPaint:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x24

    int-to-float p2, p2

    const/high16 v0, 0x40c00000    # 6.0f

    iget-object v1, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method drawItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZZ)V
    .locals 0

    .line 46
    iget-object p6, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->adapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    invoke-virtual {p6, p3}, Lcom/powervision/base/views/widget/WheelViewAdapter;->getItemString(I)Ljava/lang/String;

    move-result-object p3

    .line 47
    iget-object p6, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    if-eqz p5, :cond_0

    iget p5, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textColorCenter:I

    goto :goto_0

    :cond_0
    iget p5, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textColor:I

    :goto_0
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p5, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    iget p5, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->textHeight:F

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/powervision/base/views/widget/SimpleWheelDecoration;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
