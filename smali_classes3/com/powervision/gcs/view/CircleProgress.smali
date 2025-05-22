.class public Lcom/powervision/gcs/view/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;,
        Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FILL_MODE:Z = true

.field private static final DEFAULT_INSIDE_VALUE:I = 0x0

.field private static final DEFAULT_MAX_VALUE:I = 0x64

.field private static final DEFAULT_PAINT_COLOR:I = -0x3400

.field private static final DEFAULT_PAINT_WIDTH:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundPicture:Landroid/graphics/drawable/Drawable;

.field private mCartoomEngine:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

.field private mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

.field private mMainCurProgress:F

.field private mMaxProgress:F

.field private mSubCurProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/view/CircleProgress;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/powervision/gcs/view/CircleProgress;->defaultParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/powervision/gcs/view/CircleProgress;->defaultParam()V

    .line 52
    sget-object v0, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar_Pb_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    .line 54
    sget p2, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar_Pb_fill:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 55
    sget v0, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar_Pb_Paint_Width:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    invoke-virtual {v1, p2}, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->setFill(Z)V

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->setPaintWidth(I)V

    .line 60
    :cond_0
    sget p2, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar_Pb_Paint_Color:I

    const/16 v0, -0x3400

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paintColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    invoke-virtual {v0, p2}, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->setPaintColor(I)V

    .line 63
    iget-object p2, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    sget v0, Lcom/powervision/gcs/R$styleable;->MyCircleProgressBar_Pb_Inside_Interval:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p2, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSidePaintInterval:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/CircleProgress;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/CircleProgress;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    return p1
.end method

.method private defaultParam()V
    .locals 1

    .line 72
    new-instance v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;-><init>(Lcom/powervision/gcs/view/CircleProgress;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    .line 73
    new-instance v0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;-><init>(Lcom/powervision/gcs/view/CircleProgress;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCartoomEngine:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 74
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    .line 76
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    return-void
.end method


# virtual methods
.method public declared-synchronized getMainProgress()F
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubProgress()F
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v2, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-boolean v5, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBRoundPaintsFill:Z

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v6, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    iget v1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v3, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget v0, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mDrawPos:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-boolean v6, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBRoundPaintsFill:Z

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v7, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 117
    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    iget v2, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    div-float/2addr v0, v2

    mul-float v5, v0, v1

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v3, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget v0, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mDrawPos:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-boolean v6, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBRoundPaintsFill:Z

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    iget-object v7, v0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 87
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CircleProgress;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/view/CircleProgress;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress;->mBackgroundPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 92
    :cond_0
    invoke-static {v0, p1}, Lcom/powervision/gcs/view/CircleProgress;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/powervision/gcs/view/CircleProgress;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/CircleProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 101
    iget-object p3, p0, Lcom/powervision/gcs/view/CircleProgress;->mCircleAttribute:Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;

    invoke-virtual {p3, p1, p2}, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->autoFix(II)V

    return-void
.end method

.method public declared-synchronized setMainProgress(I)V
    .locals 1

    monitor-enter p0

    int-to-float p1, p1

    .line 129
    :try_start_0
    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 131
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    .line 133
    :cond_0
    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 134
    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMainCurProgress:F

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CircleProgress;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubProgress(I)V
    .locals 1

    monitor-enter p0

    int-to-float p1, p1

    .line 148
    :try_start_0
    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 150
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    .line 153
    :cond_0
    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 154
    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mMaxProgress:F

    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress;->mSubCurProgress:F

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/CircleProgress;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startCartoom(F)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCartoomEngine:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->startCartoom(F)V

    return-void
.end method

.method public stopCartoom()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress;->mCartoomEngine:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->stopCartoom()V

    return-void
.end method
