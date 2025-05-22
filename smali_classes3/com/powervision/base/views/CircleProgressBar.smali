.class public Lcom/powervision/base/views/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/CircleProgressBar$DirectionEnum;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private direction:I

.field private insideColor:I

.field private maxProgress:I

.field private outsideColor:I

.field private outsideRadius:F

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private progressText:Ljava/lang/String;

.field private progressTextColor:I

.field private progressTextSize:F

.field private progressWidth:F

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/powervision/base/R$styleable;->CircleProgressBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_outside_color:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/powervision/base/R$color;->blue:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideColor:I

    .line 103
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_outside_radius:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x4b

    invoke-static {p3, v0}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    .line 104
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_inside_color:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/powervision/base/R$color;->white_alpha_40:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->insideColor:I

    .line 106
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_progress_text_color:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/powervision/base/R$color;->blue:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextColor:I

    .line 108
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_progress_text_size:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0xe

    invoke-static {p3, v0}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextSize:F

    .line 109
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_progress_width:I

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    .line 110
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_progress:I

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F

    .line 111
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_max_progress:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    .line 112
    sget p2, Lcom/powervision/base/R$styleable;->CircleProgressBar_direction:I

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CircleProgressBar;->direction:I

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/base/views/CircleProgressBar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F

    return p1
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startAnim(F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 266
    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->animator:Landroid/animation/ValueAnimator;

    .line 267
    new-instance v0, Lcom/powervision/base/views/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/CircleProgressBar$1;-><init>(Lcom/powervision/base/views/CircleProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 275
    iget-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    iget-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object p1, p0, Lcom/powervision/base/views/CircleProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getInsideColor()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->insideColor:I

    return v0
.end method

.method public declared-synchronized getMaxProgress()I
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutsideColor()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideColor:I

    return v0
.end method

.method public getOutsideRadius()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    return v0
.end method

.method public declared-synchronized getProgress()F
    .locals 1

    monitor-enter p0

    .line 234
    :try_start_0
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressTextColor()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextColor:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextSize:F

    return v0
.end method

.method public getProgressWidth()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 123
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/CircleProgressBar;->insideColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, v0

    .line 127
    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    iget-object v2, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance v4, Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    sub-float v2, v0, v1

    sub-float v3, v0, v1

    add-float v5, v0, v1

    add-float/2addr v0, v1

    invoke-direct {v4, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->direction:I

    invoke-static {v0}, Lcom/powervision/base/views/CircleProgressBar$DirectionEnum;->getDegree(I)F

    move-result v5

    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F

    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v6, v0, v1

    iget-object v8, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->rect:Landroid/graphics/Rect;

    .line 135
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    invoke-direct {p0}, Lcom/powervision/base/views/CircleProgressBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressText:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/base/views/CircleProgressBar;->rect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    .line 143
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/powervision/base/views/CircleProgressBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/powervision/base/views/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget p1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    mul-float p1, p1, v1

    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    add-float/2addr p1, v0

    float-to-int v0, p1

    .line 158
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    iget p1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    mul-float p1, p1, v1

    iget p2, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 165
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/powervision/base/views/CircleProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInsideColor(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->insideColor:I

    return-void
.end method

.method public declared-synchronized setMaxProgress(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 230
    :try_start_0
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 228
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxProgress should not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setOutsideColor(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideColor:I

    return-void
.end method

.method public setOutsideRadius(F)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->outsideRadius:F

    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 242
    :try_start_0
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 243
    iget p1, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    int-to-float p1, p1

    .line 245
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ","

    const-string v1, "."

    .line 248
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->progress:F

    .line 251
    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 240
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress should not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressAnim(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 258
    :try_start_0
    iget v0, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    if-le p1, v0, :cond_0

    .line 259
    iget p1, p0, Lcom/powervision/base/views/CircleProgressBar;->maxProgress:I

    :cond_0
    int-to-float p1, p1

    .line 261
    invoke-direct {p0, p1}, Lcom/powervision/base/views/CircleProgressBar;->startAnim(F)V

    .line 262
    invoke-virtual {p0}, Lcom/powervision/base/views/CircleProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 256
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress should not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setProgressTextColor(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextColor:I

    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->progressTextSize:F

    return-void
.end method

.method public setProgressWidth(F)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/powervision/base/views/CircleProgressBar;->progressWidth:F

    return-void
.end method
