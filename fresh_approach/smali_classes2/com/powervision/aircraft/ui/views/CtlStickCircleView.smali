.class public Lcom/powervision/aircraft/ui/views/CtlStickCircleView;
.super Landroid/view/View;
.source "CtlStickCircleView.java"


# instance fields
.field private centerBigCircleColor:I

.field private centerCircleCalibrationColor:I

.field private centerCircleColor:I

.field private centerCirclePaint:Landroid/graphics/Paint;

.field private centerCircleRaduis:I

.field private circleLineWidth:I

.field private dashCirclePaint:Landroid/graphics/Paint;

.field private margin:I

.field private processBackgorundPaint:Landroid/graphics/Paint;

.field private processBottom:I

.field private processColor:I

.field private processLeft:I

.field private processPaint:Landroid/graphics/Paint;

.field private processRight:I

.field private processTop:I

.field private processWidth:I

.field private progressBackgroundColor:I

.field private textColor:I

.field private textHeight:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleRaduis:I

    const/16 v0, 0xa

    .line 18
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->margin:I

    .line 19
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    .line 20
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textSize:I

    .line 21
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    .line 22
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->circleLineWidth:I

    const-string v0, "#3A75F2"

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->progressBackgroundColor:I

    const-string v1, "#FFFF00"

    .line 26
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processColor:I

    const-string v1, "#FFFFFF"

    .line 28
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textColor:I

    .line 30
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleColor:I

    const-string v1, "#d9dadd"

    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerBigCircleColor:I

    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleCalibrationColor:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    .line 40
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processLeft:I

    .line 41
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processTop:I

    .line 42
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processRight:I

    .line 43
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBottom:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleRaduis:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textSize:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->circleLineWidth:I

    .line 54
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCirclePaint:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->progressBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    .line 78
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 p2, 0x4

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 79
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 80
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->circleLineWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerBigCircleColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x420c0000    # 35.0f
        0x41200000    # 10.0f
        0x420c0000    # 35.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 4

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    rsub-int/lit8 p4, p4, 0x64

    mul-int p4, p4, p3

    div-int/lit8 p4, p4, 0x64

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->margin:I

    add-int/2addr p4, v1

    int-to-float p4, p4

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    sub-int v3, p2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/2addr p3, v1

    int-to-float p3, p3

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-direct {v0, p4, v3, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    div-int/lit8 p3, p2, 0x2

    int-to-float p3, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 4

    rsub-int/lit8 p4, p4, 0x64

    mul-int p4, p4, p3

    .line 135
    div-int/lit8 p4, p4, 0x64

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->margin:I

    sub-int v2, p2, v1

    sub-int/2addr v2, p3

    int-to-float p3, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    sub-int v3, p2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-int v1, p2, v1

    sub-int/2addr v1, p4

    int-to-float p4, v1

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-direct {v0, p3, v3, p4, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    div-int/lit8 p3, p2, 0x2

    int-to-float p3, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 4

    rsub-int/lit8 p4, p4, 0x64

    mul-int p4, p4, p3

    .line 153
    div-int/lit8 p4, p4, 0x64

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    sub-int v2, p2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->margin:I

    add-int/2addr p4, v3

    int-to-float p4, p4

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    int-to-float p2, p2

    add-int/2addr p3, v3

    int-to-float p3, p3

    invoke-direct {v0, v2, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    div-int/lit8 p3, p2, 0x2

    int-to-float p3, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 5

    rsub-int/lit8 p4, p4, 0x64

    mul-int p4, p4, p3

    .line 163
    div-int/lit8 p4, p4, 0x64

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    sub-int v2, p2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->margin:I

    sub-int v4, p2, v3

    sub-int/2addr v4, p3

    int-to-float p3, v4

    sub-int v4, p2, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v1, v4

    sub-int/2addr p2, v3

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v0, v2, p3, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 168
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processWidth:I

    div-int/lit8 p3, p2, 0x2

    int-to-float p3, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawAllProgressInfo(Landroid/graphics/Canvas;)V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->getWidth()I

    move-result v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v3}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processRight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    sub-int v4, v0, v4

    invoke-direct {v3, v4, v5, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v3}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    invoke-direct {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v3}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    sub-int v3, v0, v3

    invoke-direct {v2, v5, v3, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v2}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawCenterCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->getWidth()I

    move-result v0

    .line 102
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCircleRaduis:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->getWidth()I

    move-result v0

    .line 92
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->dashCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;)V
    .locals 8

    .line 121
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 122
    div-int/lit8 v1, v0, 0x2

    .line 123
    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    const/16 v6, 0x64

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 124
    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->b(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 125
    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->c(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 126
    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBackgorundPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->d(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 127
    iget v6, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processLeft:I

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 128
    iget v6, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processRight:I

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->b(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 129
    iget v6, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processTop:I

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->c(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 130
    iget v6, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBottom:I

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processPaint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->d(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 116
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 117
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    int-to-float v0, v1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->textHeight:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawProgressBar(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 178
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawAllProgressInfo(Landroid/graphics/Canvas;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->drawCenterCircle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setValue(IIII)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processLeft:I

    .line 185
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processTop:I

    .line 186
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processRight:I

    .line 187
    iput p4, p0, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->processBottom:I

    .line 188
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->invalidate()V

    return-void
.end method
