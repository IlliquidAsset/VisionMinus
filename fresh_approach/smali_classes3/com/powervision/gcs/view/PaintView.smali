.class public Lcom/powervision/gcs/view/PaintView;
.super Landroid/view/View;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;
    }
.end annotation


# static fields
.field private static final MOVE_DISTANCE:F = 40.0f


# instance fields
.field private LtextStartX:F

.field private LtextStartY:F

.field private WtextStartX:F

.field private WtextStartY:F

.field private downX:F

.field private downY:F

.field private endX:D

.field private endY:D

.field private isClear:Z

.field private length:I

.field private mLTextPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mWTextPaint:Landroid/graphics/Paint;

.field private onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

.field private startX:D

.field private startY:D

.field private upX:F

.field private upY:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    .line 22
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    .line 23
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 24
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->downX:F

    .line 31
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->downY:F

    .line 32
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->upX:F

    .line 33
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->upY:F

    .line 44
    invoke-virtual {p0}, Lcom/powervision/gcs/view/PaintView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    .line 22
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    .line 23
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 24
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->downX:F

    .line 31
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->downY:F

    .line 32
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->upX:F

    .line 33
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->upY:F

    .line 49
    invoke-virtual {p0}, Lcom/powervision/gcs/view/PaintView;->init()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 10

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/PaintView;->length:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/view/PaintView;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 174
    iget-object v3, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 176
    iget-wide v6, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    iget-wide v8, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v6, v3

    double-to-float v3, v6

    iput v3, p0, Lcom/powervision/gcs/view/PaintView;->LtextStartX:F

    .line 177
    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v6, v2

    add-double/2addr v3, v6

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    add-double/2addr v3, v6

    double-to-float v2, v3

    iput v2, p0, Lcom/powervision/gcs/view/PaintView;->LtextStartY:F

    .line 179
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object v3, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 181
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 182
    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/powervision/gcs/view/PaintView;->WtextStartX:F

    .line 183
    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    iget-wide v5, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    div-double/2addr v3, v8

    div-int/lit8 v2, v2, 0x2

    int-to-double v5, v2

    sub-double/2addr v3, v5

    double-to-float v2, v3

    iput v2, p0, Lcom/powervision/gcs/view/PaintView;->WtextStartY:F

    .line 185
    iget v3, p0, Lcom/powervision/gcs/view/PaintView;->WtextStartX:F

    iget-object v4, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    iget v1, p0, Lcom/powervision/gcs/view/PaintView;->LtextStartX:F

    iget v2, p0, Lcom/powervision/gcs/view/PaintView;->LtextStartY:F

    iget-object v3, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 2

    .line 191
    iput-boolean p1, p0, Lcom/powervision/gcs/view/PaintView;->isClear:Z

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    .line 193
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    .line 194
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 195
    iput-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    .line 200
    invoke-virtual {p0}, Lcom/powervision/gcs/view/PaintView;->invalidate()V

    return-void
.end method

.method public getEndX()D
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    return-wide v0
.end method

.method public getEndY()D
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    return-wide v0
.end method

.method public getOnMapRegionTouchListener()Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

    return-object v0
.end method

.method public getStartX()D
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    return-wide v0
.end method

.method public getStartY()D
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    return-wide v0
.end method

.method public init()V
    .locals 5

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xa12387

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    const-string v3, "#8C8C8C"

    .line 65
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mLTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    .line 71
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mWTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-boolean v0, p0, Lcom/powervision/gcs/view/PaintView;->isClear:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    iget-wide v1, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    iget-wide v5, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 84
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    iget-wide v6, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    iget-object v1, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/PaintView;->drawText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 90
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/view/PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/powervision/gcs/view/PaintView;->isClear:Z

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    .line 113
    invoke-virtual {p0}, Lcom/powervision/gcs/view/PaintView;->invalidate()V

    .line 114
    iget-object p1, p0, Lcom/powervision/gcs/view/PaintView;->onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

    if-eqz p1, :cond_3

    .line 115
    iget-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;->onActionMove(DD)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    .line 120
    new-instance p1, Landroid/graphics/RectF;

    iget-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    iget-wide v5, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    .line 121
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    iget-wide v6, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    invoke-virtual {p0}, Lcom/powervision/gcs/view/PaintView;->invalidate()V

    .line 124
    iget-object p1, p0, Lcom/powervision/gcs/view/PaintView;->onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

    if-eqz p1, :cond_3

    .line 125
    iget-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;->onActionUp(DD)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    .line 106
    iget-object p1, p0, Lcom/powervision/gcs/view/PaintView;->onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

    if-eqz p1, :cond_3

    .line 107
    iget-wide v4, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    invoke-interface {p1, v4, v5, v2, v3}, Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;->onActionDown(DD)V

    :cond_3
    :goto_0
    return v1
.end method

.method public setEndX(D)V
    .locals 0

    .line 228
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->endX:D

    return-void
.end method

.method public setEndY(D)V
    .locals 0

    .line 232
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->endY:D

    return-void
.end method

.method public setLength(II)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/powervision/gcs/view/PaintView;->length:I

    .line 97
    iput p2, p0, Lcom/powervision/gcs/view/PaintView;->width:I

    return-void
.end method

.method public setOnMapRegionTouchListener(Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/powervision/gcs/view/PaintView;->onMapRegionTouchListener:Lcom/powervision/gcs/view/PaintView$OnMapRegionTouchListener;

    return-void
.end method

.method public setStartX(D)V
    .locals 0

    .line 220
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->startX:D

    return-void
.end method

.method public setStartY(D)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lcom/powervision/gcs/view/PaintView;->startY:D

    return-void
.end method
