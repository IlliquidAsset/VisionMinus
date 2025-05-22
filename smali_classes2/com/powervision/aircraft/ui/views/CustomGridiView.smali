.class public Lcom/powervision/aircraft/ui/views/CustomGridiView;
.super Landroid/view/View;
.source "CustomGridiView.java"


# static fields
.field private static final DIAGONAL:I = 0x2

.field private static final GRID:I = 0x1


# instance fields
.field private CURRENT:I

.field private Height:I

.field private Width:I

.field private linePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->CURRENT:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    .line 23
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->CURRENT:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    .line 23
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    .line 33
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->initPaint()V

    return-void
.end method

.method private drawDiagonal(Landroid/graphics/Canvas;)V
    .locals 7

    .line 76
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 8

    .line 69
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    int-to-float v5, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    int-to-float v5, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v3, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v3, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_camera_setting_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->CURRENT:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->drawDiagonal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->drawGrid(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 63
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 64
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Height:I

    .line 65
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->Width:I

    return-void
.end method

.method public setGridType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CustomGridiView;->CURRENT:I

    .line 38
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CustomGridiView;->invalidate()V

    return-void
.end method
