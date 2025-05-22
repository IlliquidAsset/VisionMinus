.class public Lcom/powervision/gcs/view/ship/ShipRoundProgress;
.super Landroid/view/View;
.source "ShipRoundProgress.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I = 0x0

.field private static final offset:I = 0x8


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    .line 47
    sget-object p3, Lcom/powervision/gcs/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_roundColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundColor:I

    .line 51
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_roundProgressColor:I

    const p3, -0xff0100

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundProgressColor:I

    .line 52
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_textColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textColor:I

    .line 53
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_textSize:I

    const/high16 p3, 0x41700000    # 15.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textSize:F

    .line 54
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_roundWidth:I

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    .line 55
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_max:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    .line 56
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_textIsDisplayable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textIsDisplayable:Z

    .line 57
    sget p2, Lcom/powervision/gcs/R$styleable;->RoundProgressBar_style:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->style:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 68
    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 69
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v4, v2

    .line 73
    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textSize:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->progress:I

    int-to-float v4, v4

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 80
    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 82
    iget-boolean v7, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textIsDisplayable:Z

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->style:I

    if-nez v7, :cond_0

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    div-float/2addr v6, v3

    sub-float v6, v1, v6

    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textSize:F

    div-float/2addr v7, v3

    add-float/2addr v1, v7

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v7, Landroid/graphics/RectF;

    sub-int v1, v0, v2

    int-to-float v3, v1

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-direct {v7, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    new-instance v9, Landroid/graphics/RectF;

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    add-int/lit8 v0, v0, -0x8

    int-to-float v0, v0

    invoke-direct {v9, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->style:I

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->progress:I

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    mul-int/lit16 v0, v0, 0x168

    .line 102
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    div-int/2addr v0, v1

    int-to-float v11, v0

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, 0x0

    .line 96
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    div-int/2addr v0, v1

    int-to-float v9, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 117
    :try_start_0
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 115
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_2

    .line 128
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    if-le p1, v0, :cond_0

    .line 129
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    .line 131
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->max:I

    if-gt p1, v0, :cond_1

    .line 132
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->progress:I

    .line 133
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 126
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->roundWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRoundProgress;->textSize:F

    return-void
.end method
