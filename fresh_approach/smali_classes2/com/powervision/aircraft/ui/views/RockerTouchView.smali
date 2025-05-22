.class public Lcom/powervision/aircraft/ui/views/RockerTouchView;
.super Landroid/view/View;
.source "RockerTouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;
    }
.end annotation


# instance fields
.field allDirectionMode:Z

.field private deaultRockerPointPaint:Landroid/graphics/Paint;

.field private defaultDst:Landroid/graphics/RectF;

.field private defaultPointBitmap:Landroid/graphics/Bitmap;

.field private defaultSrc:Landroid/graphics/Rect;

.field private fullHeight:I

.field private fullWidth:I

.field private innerCenterX:F

.field private innerCenterY:F

.field private innerDst:Landroid/graphics/RectF;

.field private innerSrc:Landroid/graphics/Rect;

.field keepDeading:Z

.field private mDirectionBmp:Landroid/graphics/Bitmap;

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mInnerRedius:F

.field private mOutRadius:F

.field private mOuterBgBitmap:Landroid/graphics/Bitmap;

.field private mOuterBgPaint:Landroid/graphics/Paint;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mRockerPointBitmap:Landroid/graphics/Bitmap;

.field private mRockerPointPaint:Landroid/graphics/Paint;

.field private mRockerViewChangeListener:Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;

.field private outDst:Landroid/graphics/RectF;

.field private outSrc:Landroid/graphics/Rect;

.field roockTouchMode:Z

.field private touchDownX:F

.field private touchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x384

    .line 26
    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    .line 27
    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->roockTouchMode:Z

    .line 59
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->allDirectionMode:Z

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerViewChangeListener:Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;

    .line 67
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->initPaint()V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->initCircleParams()V

    return-void
.end method

.method private checkTouchDownPoint(FF)V
    .locals 6

    .line 369
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    .line 370
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    cmpg-float v5, p2, v2

    if-gtz v5, :cond_0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 372
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_3

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_3

    .line 373
    iput-boolean v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_1

    .line 376
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    sub-float/2addr p2, v0

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_3

    .line 377
    iput-boolean v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    cmpl-float v0, p2, v2

    if-lez v0, :cond_2

    .line 380
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 381
    iput-boolean v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    goto :goto_0

    .line 384
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    .line 385
    iput-boolean v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static drawRotateArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFF)V
    .locals 5

    .line 225
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    .line 228
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 229
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p2, v1

    add-float/2addr p3, p2

    int-to-float p2, v2

    add-float/2addr p4, p2

    .line 230
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getAngle(FFFZ)D
    .locals 10

    .line 308
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 309
    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p3

    div-float/2addr v0, p3

    .line 314
    iget p3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float v3, p3, v2

    mul-float v3, v3, v0

    sub-float/2addr p3, v2

    mul-float p3, p3, v1

    float-to-double v0, v0

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v4

    .line 318
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-float v8, p1, v2

    if-ltz v8, :cond_1

    iget v8, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    cmpl-float v9, p2, v8

    if-ltz v9, :cond_1

    if-nez p4, :cond_0

    add-float/2addr v2, v3

    .line 320
    iput v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    add-float/2addr v8, p3

    .line 321
    iput v8, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    :cond_0
    sub-double/2addr v6, v0

    const-wide p1, 0x4070e00000000000L    # 270.0

    add-double v0, v6, p1

    goto :goto_0

    .line 324
    :cond_1
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    cmpg-float v8, p1, v2

    if-gez v8, :cond_3

    iget v8, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    cmpl-float v9, p2, v8

    if-ltz v9, :cond_3

    if-nez p4, :cond_2

    sub-float/2addr v2, v3

    .line 326
    iput v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    add-float/2addr v8, p3

    .line 327
    iput v8, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    :cond_2
    add-double/2addr v0, v4

    goto :goto_0

    .line 330
    :cond_3
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_4

    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    cmpg-float p2, p2, p1

    if-gez p2, :cond_4

    if-nez p4, :cond_6

    add-float/2addr v2, v3

    .line 332
    iput v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    sub-float/2addr p1, p3

    .line 333
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    .line 337
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    sub-float/2addr p1, v3

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    .line 338
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    :cond_5
    sub-double p1, v6, v0

    add-double v0, p1, v6

    :cond_6
    :goto_0
    return-wide v0
.end method

.method private getDirection(DZ)I
    .locals 6

    const-wide v0, 0x4046800000000000L    # 45.0

    if-eqz p3, :cond_1

    const-wide v2, 0x4036800000000000L    # 22.5

    cmpl-double p3, p1, v2

    if-ltz p3, :cond_0

    const-wide v4, 0x4075180000000000L    # 337.5

    cmpg-double p3, p1, v4

    if-gez p3, :cond_0

    add-double/2addr p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    cmpl-double p3, p1, v0

    if-ltz p3, :cond_2

    const-wide v2, 0x4073b00000000000L    # 315.0

    cmpg-double p3, p1, v2

    if-gez p3, :cond_2

    add-double/2addr p1, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    div-double/2addr p1, v0

    double-to-int p1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    return p1
.end method

.method private getDistance(FFFF)F
    .locals 4

    sub-float/2addr p3, p1

    .line 391
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public static getPointsAngleDegree(DDDD)D
    .locals 6

    .line 238
    invoke-static/range {p0 .. p7}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPointsDistant(DDDD)D

    move-result-wide v0

    sub-double v2, p6, p2

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    cmpg-double v4, p4, p0

    if-gez v4, :cond_0

    cmpg-double v5, p6, p2

    if-gez v5, :cond_0

    sub-double v0, v2, v0

    goto :goto_0

    :cond_0
    if-gez v4, :cond_1

    cmpl-double v4, p6, p2

    if-ltz v4, :cond_1

    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    cmpl-double v2, p4, p0

    if-ltz v2, :cond_2

    cmpl-double p0, p6, p2

    if-ltz p0, :cond_2

    const-wide p0, 0x4076800000000000L    # 360.0

    sub-double v0, p0, v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static getPointsDistant(DDDD)D
    .locals 0

    sub-double/2addr p4, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    .line 254
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    sub-double/2addr p6, p2

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p4, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 118
    sget-object v0, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView_aircraft_all_direction_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->allDirectionMode:Z

    .line 121
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView_aircraft_roock_touch_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->roockTouchMode:Z

    .line 122
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView_aircraft_out_circle_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 125
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 126
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView_aircraft_rocker_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 132
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 133
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    .line 136
    :cond_1
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftRockerTouchView_aircraft_default_rocker_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 139
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 140
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultPointBitmap:Landroid/graphics/Bitmap;

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initCircleParams()V
    .locals 8

    .line 73
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    div-int/lit8 v1, v1, 0x4

    .line 74
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    .line 75
    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    .line 77
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->roockTouchMode:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$drawable;->test_out_arrow:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    mul-float v5, v4, v1

    add-float/2addr v3, v5

    float-to-int v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v4, v4, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mDirectionBmp:Landroid/graphics/Bitmap;

    .line 82
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outSrc:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    sub-float v5, v2, v3

    iget v6, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    sub-float v7, v6, v3

    add-float/2addr v2, v3

    add-float/2addr v6, v3

    invoke-direct {v0, v5, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outDst:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float v5, v2, v3

    iget v6, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    sub-float v7, v6, v3

    add-float/2addr v2, v3

    add-float/2addr v6, v3

    invoke-direct {v0, v5, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerDst:Landroid/graphics/RectF;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerSrc:Landroid/graphics/Rect;

    .line 91
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v0, v2

    mul-float v0, v0, v2

    .line 93
    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultSrc:Landroid/graphics/Rect;

    .line 94
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    div-float v6, v3, v1

    sub-float/2addr v5, v6

    div-int/lit8 v6, v4, 0x5

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    div-float v1, v0, v1

    sub-float/2addr v6, v1

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    div-int/lit8 v4, v4, 0x5

    mul-int/lit8 v4, v4, 0x3

    int-to-float v3, v4

    add-float/2addr v3, v0

    invoke-direct {v2, v5, v6, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultDst:Landroid/graphics/RectF;

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterPaint:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->deaultRockerPointPaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->deaultRockerPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    if-nez v0, :cond_1

    .line 175
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    return p1

    .line 177
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    if-nez v0, :cond_1

    .line 162
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    return p1

    .line 164
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private updateMoveStatus(Landroid/view/MotionEvent;)V
    .locals 6

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 285
    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getDistance(FFFF)F

    move-result v1

    .line 287
    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v2, :cond_1

    .line 290
    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    .line 291
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    .line 292
    invoke-direct {p0, v0, p1, v1, v3}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getAngle(FFFZ)D

    move-result-wide v2

    .line 294
    iget p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float/2addr p1, v0

    div-float/2addr v1, p1

    mul-float v5, v5, v1

    goto :goto_1

    .line 296
    :cond_1
    invoke-direct {p0, v0, p1, v1, v4}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getAngle(FFFZ)D

    move-result-wide v2

    .line 300
    :goto_1
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->allDirectionMode:Z

    invoke-direct {p0, v2, v3, p1}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getDirection(DZ)I

    move-result p1

    .line 301
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerViewChangeListener:Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_2

    .line 302
    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->allDirectionMode:Z

    double-to-float v2, v2

    invoke-interface {v0, v1, v2, p1, v5}, Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;->onRockerViewChange(ZFIF)V

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 190
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultPointBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outSrc:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outDst:Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    sub-float v4, v1, v2

    iget v5, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    sub-float v6, v5, v2

    add-float/2addr v1, v2

    add-float/2addr v5, v2

    invoke-virtual {v0, v4, v6, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->outDst:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOuterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerDst:Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float v3, v1, v2

    iget v4, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    sub-float v5, v4, v2

    add-float/2addr v1, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerDst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 211
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->roockTouchMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mDirectionBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    float-to-double v1, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    float-to-double v3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    float-to-double v5, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    float-to-double v7, v0

    invoke-static/range {v1 .. v8}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->getPointsAngleDegree(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 213
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mDirectionBmp:Landroid/graphics/Bitmap;

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mOutRadius:F

    sub-float/2addr v0, v3

    iget v4, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mInnerRedius:F

    sub-float/2addr v0, v4

    iget v5, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    sub-float/2addr v5, v3

    sub-float/2addr v5, v4

    invoke-static {p1, v1, v2, v0, v5}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->drawRotateArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFF)V

    :cond_2
    return-void

    .line 195
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultPointBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->defaultDst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->deaultRockerPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 150
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->measureWidth(I)I

    move-result p1

    .line 151
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->measureHeight(I)I

    move-result p2

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 184
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullWidth:I

    .line 185
    iput p2, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->fullHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->updateMoveStatus(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    .line 272
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    .line 273
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    .line 274
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    .line 275
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->keepDeading:Z

    .line 276
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->invalidate()V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterX:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownY:F

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->innerCenterY:F

    .line 264
    iget v0, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->touchDownX:F

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/RockerTouchView;->checkTouchDownPoint(FF)V

    :goto_0
    return v1
.end method

.method public setRockerViewChangeListener(Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/RockerTouchView;->mRockerViewChangeListener:Lcom/powervision/aircraft/ui/views/RockerTouchView$RockerViewChangeListener;

    return-void
.end method
