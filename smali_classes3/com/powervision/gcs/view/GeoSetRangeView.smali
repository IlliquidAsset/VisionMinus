.class public Lcom/powervision/gcs/view/GeoSetRangeView;
.super Landroid/view/View;
.source "GeoSetRangeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;
    }
.end annotation


# instance fields
.field private contentHeight:F

.field private contentRect:Landroid/graphics/RectF;

.field private contentWidth:F

.field private cursorHeight:F

.field private cursorPaint:Landroid/graphics/Paint;

.field private cursorPosition:F

.field private cursorRectf:Landroid/graphics/RectF;

.field private cursorWidth:F

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private downPaint:Landroid/graphics/Paint;

.field private downRectf:Landroid/graphics/RectF;

.field focusOnCursor:Z

.field public geoSetRangeListener:Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;

.field private paddingHori:F

.field private paddingVertical:F

.field private present:F

.field private tailBp:Landroid/graphics/Bitmap;

.field private textPaint:Landroid/graphics/Paint;

.field private upBp:Landroid/graphics/Bitmap;

.field private upPaint:Landroid/graphics/Paint;

.field private upRectf:Landroid/graphics/RectF;

.field private wholeHeight:F

.field private wholeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#0.0"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPaint:Landroid/graphics/Paint;

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    .line 35
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    .line 36
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 38
    iput v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    .line 39
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorWidth:F

    .line 40
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    .line 44
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    .line 46
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->tailBp:Landroid/graphics/Bitmap;

    .line 51
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upPaint:Landroid/graphics/Paint;

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downPaint:Landroid/graphics/Paint;

    .line 54
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->focusOnCursor:Z

    .line 58
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "#0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPaint:Landroid/graphics/Paint;

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    .line 35
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    .line 36
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 38
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    .line 39
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorWidth:F

    .line 40
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    .line 44
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    .line 46
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->tailBp:Landroid/graphics/Bitmap;

    .line 51
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upPaint:Landroid/graphics/Paint;

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downPaint:Landroid/graphics/Paint;

    .line 54
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->focusOnCursor:Z

    .line 63
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/16 v4, 0xa0

    .line 75
    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    .line 79
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->anniu:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->tailBp:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->color:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upBp:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 139
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upBp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const-string v1, "0.0m"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const-string v2, "50.0m"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 150
    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41700000    # 15.0f

    sub-float/2addr v0, v5

    iget-object v6, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const-string v7, "0m"

    invoke-virtual {p1, v7, v2, v0, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const-string v6, "50m"

    .line 152
    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    .line 159
    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->decimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->tailBp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    const-string v2, "00.0m"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget-object v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    .line 165
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->textPaint:Landroid/graphics/Paint;

    .line 164
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 92
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const-string p1, "lzqRange"

    const-string v0, "onlayout"

    .line 93
    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr p5, p3

    int-to-float p3, p5

    .line 94
    iput p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeHeight:F

    sub-int/2addr p4, p2

    int-to-float p2, p4

    .line 95
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    const p2, 0x3e0f5c29    # 0.14f

    mul-float p2, p2, p3

    .line 96
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float p5, p2, p4

    sub-float/2addr p3, p5

    .line 98
    iput p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    const/high16 p5, 0x41400000    # 12.0f

    div-float/2addr p3, p5

    .line 99
    iput p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    const/high16 p5, 0x40800000    # 4.0f

    div-float/2addr p2, p5

    .line 100
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    mul-float p2, p2, p4

    add-float/2addr p3, p2

    .line 101
    iput p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorWidth:F

    div-float/2addr p3, p4

    .line 102
    iput p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    .line 103
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    sub-float p5, p3, p5

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr p5, v0

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeHeight:F

    sub-float/2addr v0, v1

    invoke-direct {p2, p5, v1, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contentRect: top:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " bottom:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, "   height:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    if-nez p2, :cond_0

    .line 109
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    invoke-direct {p2, v1, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upRectf: top:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeHeight:F

    iget v4, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    sub-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downRectf: top:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorWidth:F

    sub-float p3, p2, p3

    iget p5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    div-float v1, v0, p4

    sub-float v1, p5, v1

    div-float/2addr v0, p4

    add-float/2addr p5, v0

    invoke-direct {p1, p3, v1, p2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    goto :goto_0

    .line 119
    :cond_0
    iget p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    iget p5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    mul-float p3, p3, p5

    add-float/2addr p1, p3

    iput p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    .line 120
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 121
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 122
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 123
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 126
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentWidth:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 127
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingHori:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 128
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeHeight:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorWidth:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 130
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeWidth:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget p3, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 198
    iget-boolean p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->focusOnCursor:Z

    if-eqz p2, :cond_5

    .line 199
    iput p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    .line 200
    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    .line 201
    iput p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->wholeHeight:F

    sub-float v2, v0, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    sub-float/2addr v0, p2

    .line 203
    iput v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    .line 205
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 206
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorHeight:F

    div-float/2addr v0, v2

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 207
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->upRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 208
    iget-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->downRectf:Landroid/graphics/RectF;

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 209
    iget p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->paddingVertical:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->present:F

    .line 211
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GeoSetRangeView;->invalidate()V

    goto :goto_1

    .line 217
    :cond_3
    iput-boolean v0, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->focusOnCursor:Z

    .line 218
    iget p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorPosition:F

    iget-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->contentHeight:F

    div-float/2addr p1, p2

    const/high16 p2, 0x42480000    # 50.0f

    mul-float p1, p1, p2

    .line 219
    iget-object p2, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->geoSetRangeListener:Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;

    if-eqz p2, :cond_5

    .line 220
    invoke-interface {p2, p1}, Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;->setRange(F)V

    goto :goto_1

    .line 184
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/high16 v2, 0x420c0000    # 35.0f

    .line 187
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    iget-object v6, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->cursorRectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 188
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->focusOnCursor:Z

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public setGeoSetRangeListener(Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/powervision/gcs/view/GeoSetRangeView;->geoSetRangeListener:Lcom/powervision/gcs/view/GeoSetRangeView$GeoSetRangeListener;

    return-void
.end method
