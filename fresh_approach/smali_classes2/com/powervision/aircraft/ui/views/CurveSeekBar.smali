.class public Lcom/powervision/aircraft/ui/views/CurveSeekBar;
.super Landroid/view/View;
.source "CurveSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;
    }
.end annotation


# instance fields
.field private MaxProgress:I

.field private centerX:F

.field private centerY:F

.field private circleLineColor:I

.field private endAngle:F

.field private mAngle:F

.field private mArcPaint:Landroid/graphics/Paint;

.field private mCenterPointBitmap:Landroid/graphics/Bitmap;

.field private mCircleSeekViewChangeListener:Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;

.field private mCurrentProgress:I

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointRadius:F

.field private mPointX:F

.field private mPointY:F

.field private mRadius:F

.field private mRectCircle:Landroid/graphics/RectF;

.field private mStrokeWith:F

.field private padding:F

.field private pointColor:I

.field private startAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 36
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->startAngle:F

    const/high16 p3, 0x43020000    # 130.0f

    .line 38
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->endAngle:F

    sub-float/2addr p3, p1

    .line 40
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mAngle:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    const/high16 p3, 0x41a00000    # 20.0f

    .line 54
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    const/high16 p3, -0x40800000    # -1.0f

    .line 59
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    .line 63
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    const/high16 p3, 0x40800000    # 4.0f

    mul-float p1, p1, p3

    .line 71
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    const/16 p1, 0x64

    .line 73
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    const/high16 p1, -0x10000

    .line 78
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->circleLineColor:I

    const p1, -0xffff01

    .line 80
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->pointColor:I

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCircleSeekViewChangeListener:Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;

    .line 95
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 96
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->intParams()V

    .line 97
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->initPaint()V

    return-void
.end method

.method private checkTouchingArea(FF)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 186
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 187
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 188
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->pointProgress(FF)V

    :cond_0
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 245
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 246
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 250
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->startAngle:F

    iget v5, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mAngle:F

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCenterPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 253
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCenterPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointPaint:Landroid/graphics/Paint;

    .line 252
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPointLocation()V

    .line 257
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 258
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 260
    :cond_1
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getMaxX()F
    .locals 4

    .line 284
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->startAngle:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 285
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRadius:F

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getMinX()F
    .locals 6

    .line 290
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->endAngle:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 291
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRadius:F

    float-to-double v4, v4

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 292
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getPointLocation()V
    .locals 10

    .line 267
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    .line 269
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-lez v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getMaxX()F

    move-result v0

    .line 272
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    .line 273
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    float-to-double v3, v3

    iget v5, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRadius:F

    float-to-double v5, v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v0

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-float v1, v3

    iput v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    .line 274
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    goto :goto_0

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getMinX()F

    move-result v0

    .line 277
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    sub-float v0, v3, v0

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointX:F

    .line 278
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    float-to-double v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRadius:F

    float-to-double v6, v0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    sub-float/2addr v0, v3

    float-to-double v8, v0

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v4, v0

    double-to-float v0, v4

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointY:F

    :goto_0
    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->circleLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    invoke-static {v2, v3}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointPaint:Landroid/graphics/Paint;

    .line 152
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->pointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_progress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    .line 105
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_line_color:I

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->circleLineColor:I

    .line 106
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_line_width:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    .line 107
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_point_radius:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mStrokeWith:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    .line 109
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_radius_padding:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    .line 110
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_point_color:I

    const v1, -0xffff01

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->pointColor:I

    .line 112
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_point_bitmap:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 115
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 119
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftCurveSeekBar_aircraft_curve_center_point_bitmap:I

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 123
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mPointRadius:F

    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCenterPointBitmap:Landroid/graphics/Bitmap;

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private intParams()V
    .locals 5

    .line 133
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    .line 134
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRectCircle:Landroid/graphics/RectF;

    return-void
.end method

.method private isValidateTouch(FF)Z
    .locals 4

    .line 236
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    double-to-float p1, v0

    .line 237
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    mul-float p2, p2, p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pointProgress(FF)V
    .locals 3

    .line 197
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    return-void

    .line 200
    :cond_0
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    sub-float p2, p1, p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 202
    :goto_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getMaxX()F

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    add-float/2addr v0, v1

    .line 203
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getMinX()F

    move-result v1

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    move p1, v0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 211
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    sub-float p1, p2, p1

    sub-float/2addr p2, v1

    div-float/2addr p1, p2

    .line 212
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    neg-float p1, p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    goto :goto_2

    .line 214
    :cond_4
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    sub-float/2addr p1, p2

    sub-float/2addr v0, p2

    div-float/2addr p1, v0

    .line 215
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    .line 217
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCircleSeekViewChangeListener:Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;

    if-eqz p1, :cond_5

    .line 218
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;->onSeekViewChange(I)V

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->drawArc(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 227
    div-int/lit8 p3, p1, 0x2

    int-to-float p3, p3

    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerX:F

    .line 228
    div-int/lit8 p3, p2, 0x2

    int-to-float p3, p3

    iput p3, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->centerY:F

    .line 229
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->padding:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mRadius:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->checkTouchingArea(FF)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->isValidateTouch(FF)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setCircleSeekViewChangeListener(Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCircleSeekViewChangeListener:Lcom/powervision/aircraft/ui/views/CurveSeekBar$CircleSeekViewChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->MaxProgress:I

    if-gt v0, v1, :cond_0

    .line 311
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->mCurrentProgress:I

    .line 312
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CurveSeekBar;->invalidate()V

    return-void

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress error ... the value must in  -100~100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
