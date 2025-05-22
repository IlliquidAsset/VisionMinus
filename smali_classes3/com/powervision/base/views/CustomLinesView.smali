.class public Lcom/powervision/base/views/CustomLinesView;
.super Landroid/view/View;
.source "CustomLinesView.java"


# instance fields
.field private Height:I

.field private Width:I

.field isOnTouchRocker:Z

.field private linePaint:Landroid/graphics/Paint;

.field private mLineMode:I

.field private workMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/powervision/base/views/CustomLinesView;->isOnTouchRocker:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    .line 50
    iput v0, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    .line 82
    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    .line 18
    invoke-direct {p0}, Lcom/powervision/base/views/CustomLinesView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/powervision/base/views/CustomLinesView;->isOnTouchRocker:Z

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    .line 50
    iput p2, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    .line 82
    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/views/CustomLinesView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/powervision/base/views/CustomLinesView;->isOnTouchRocker:Z

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    .line 50
    iput p2, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    .line 82
    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/views/CustomLinesView;->initView()V

    return-void
.end method

.method private drawAircraftLines(Landroid/graphics/Canvas;)V
    .locals 2

    .line 117
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawGridLines(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 121
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawGridLines(Landroid/graphics/Canvas;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawDiagonalLines(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawDiagonalLines(Landroid/graphics/Canvas;)V
    .locals 7

    .line 75
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDvLines(Landroid/graphics/Canvas;)V
    .locals 2

    .line 105
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/powervision/base/views/CustomLinesView;->isOnTouchRocker:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawGridLines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 108
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 109
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawGridLines(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawGridLines(Landroid/graphics/Canvas;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawDiagonalLines(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drawGridLines(Landroid/graphics/Canvas;)V
    .locals 8

    .line 68
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    int-to-float v5, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    int-to-float v5, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v3, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v3, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/powervision/base/views/CustomLinesView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initView()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/powervision/base/views/CustomLinesView;->initPaint()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-boolean v0, p0, Lcom/powervision/base/views/CustomLinesView;->workMode:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawAircraftLines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CustomLinesView;->drawDvLines(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 62
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 63
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomLinesView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->Height:I

    .line 64
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomLinesView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->Width:I

    return-void
.end method

.method public setLineMode(I)V
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 88
    :cond_1
    iput p1, p0, Lcom/powervision/base/views/CustomLinesView;->mLineMode:I

    .line 89
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomLinesView;->postInvalidate()V

    return-void
.end method

.method public setLineWorkMode(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/powervision/base/views/CustomLinesView;->workMode:Z

    return-void
.end method

.method public setOnTouchRocker(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/powervision/base/views/CustomLinesView;->isOnTouchRocker:Z

    .line 36
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomLinesView;->postInvalidate()V

    return-void
.end method
