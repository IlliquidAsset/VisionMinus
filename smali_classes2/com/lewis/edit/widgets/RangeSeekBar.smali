.class public Lcom/lewis/edit/widgets/RangeSeekBar;
.super Landroid/view/View;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;
    }
.end annotation


# static fields
.field private static final LEFT_BORDER:I = -0x1

.field private static final NONE_BORDER:I = -0x3

.field private static final RIGHT_BORDER:I = -0x2

.field private static mDefaultBlockHeight:F = 55.0f

.field private static mDefaultBlockWidth:F = 15.0f


# instance fields
.field private isTouchLeft:Z

.field private isTouchRight:Z

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapWidth:I

.field private mCropLength:F

.field private mDefaultMinLength:F

.field private mFramePaint:Landroid/graphics/Paint;

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftEdgePosition:F

.field private mLeftMaskRect:Landroid/graphics/Rect;

.field private mMargin:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRightEdgePosition:F

.field private mRightMaskRect:Landroid/graphics/Rect;

.field private mSeekChangeListener:Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/lewis/edit/widgets/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    const p1, 0x3dcccccd    # 0.1f

    .line 36
    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultMinLength:F

    .line 70
    invoke-direct {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->init()V

    .line 71
    invoke-direct {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->initPaint()V

    .line 72
    invoke-direct {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->initRect()V

    return-void
.end method

.method private init()V
    .locals 10

    .line 77
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_left_crop_border:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_right_crop_border:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 80
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 83
    sget v1, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultBlockWidth:F

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    .line 84
    sget v1, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultBlockHeight:F

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    .line 86
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mCropLength:F

    .line 88
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 90
    iget v3, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    int-to-float v2, v8

    div-float/2addr v3, v2

    .line 91
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    invoke-virtual {v9, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 94
    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move v4, v0

    move v5, v8

    move-object v6, v9

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 97
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    int-to-float v1, v0

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    .line 98
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mCropLength:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mFramePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    .line 108
    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mFramePaint:Landroid/graphics/Paint;

    const-string v2, "#3A75F2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMaskPaint:Landroid/graphics/Paint;

    const-string v1, "#CC000000"

    .line 112
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initRect()V
    .locals 1

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftMaskRect:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightMaskRect:Landroid/graphics/Rect;

    return-void
.end method

.method private isWhoBorder(F)I
    .locals 2

    .line 274
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 276
    :cond_0
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 p1, -0x3

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    .line 175
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    float-to-int v1, v1

    sub-int v2, v1, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 178
    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftMaskRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftMaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    float-to-int v0, v0

    .line 185
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    sub-int/2addr v1, v2

    sub-int v2, v1, v0

    if-lez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 188
    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightMaskRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    invoke-virtual {v2, v0, v3, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightMaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v1, v1

    add-float v3, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float v5, v1, v2

    .line 195
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mFramePaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 194
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v2, v2

    add-float v4, v1, v2

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapHeight:I

    .line 197
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v7, v1

    iget-object v8, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mFramePaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 196
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    :goto_0
    const/16 v0, 0x78

    .line 164
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 167
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/lewis/edit/widgets/RangeSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    const/4 v4, -0x3

    if-eq v1, v3, :cond_7

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchLeft:Z

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    .line 223
    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    sub-float v1, v2, v1

    iget v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultMinLength:F

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_1

    mul-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    sub-float/2addr v2, v1

    sub-float/2addr v2, v6

    .line 224
    iput v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    .line 227
    :cond_1
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    int-to-float v5, v2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    int-to-float v1, v2

    .line 228
    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->invalidate()V

    goto :goto_0

    .line 231
    :cond_3
    iget-boolean v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchRight:Z

    if-eqz v1, :cond_6

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    .line 238
    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    sub-float/2addr v1, v2

    iget v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultMinLength:F

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_4

    mul-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    add-float/2addr v2, v1

    add-float/2addr v2, v6

    .line 239
    iput v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    .line 242
    :cond_4
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->invalidate()V

    .line 247
    :cond_6
    :goto_0
    iget v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    sub-float v5, v1, v2

    iget v6, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mCropLength:F

    .line 248
    iget-object v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mSeekChangeListener:Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;

    if-eqz v5, :cond_b

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 249
    invoke-interface {v5, v4, v2, v1, v0}, Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;->seekChange(IFFI)V

    goto :goto_1

    .line 253
    :cond_7
    iput-boolean v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchLeft:Z

    iput-boolean v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchRight:Z

    .line 254
    iget-object v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mSeekChangeListener:Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;

    if-eqz v1, :cond_b

    .line 255
    iget v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    iget v5, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    iget v6, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    sub-float/2addr v5, v0

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;->seekChange(IFFI)V

    goto :goto_1

    .line 206
    :cond_8
    invoke-direct {p0, v0}, Lcom/lewis/edit/widgets/RangeSeekBar;->isWhoBorder(F)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 208
    iput-boolean v3, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchLeft:Z

    goto :goto_1

    :cond_9
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 210
    iput-boolean v3, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchRight:Z

    goto :goto_1

    .line 212
    :cond_a
    iput-boolean v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchLeft:Z

    iput-boolean v2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchRight:Z

    .line 259
    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchLeft:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->isTouchRight:Z

    if-eqz v0, :cond_c

    goto :goto_2

    .line 262
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    :goto_2
    return v3
.end method

.method public setBlockPosition(F)V
    .locals 2

    .line 150
    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mCropLength:F

    .line 151
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    int-to-float v1, v0

    iput v1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 152
    iget p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->invalidate()V

    return-void
.end method

.method public setBlockPosition(FF)V
    .locals 1

    .line 137
    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultMinLength:F

    .line 138
    iput p2, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mCropLength:F

    .line 139
    iget p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mMargin:I

    int-to-float v0, p1

    iput v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mLeftEdgePosition:F

    .line 140
    iget v0, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mRightEdgePosition:F

    .line 141
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->invalidate()V

    return-void
.end method

.method public setDefaultMinLength(JI)V
    .locals 2

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    .line 127
    div-long/2addr v0, p1

    long-to-float p1, v0

    iput p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mDefaultMinLength:F

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/lewis/edit/widgets/RangeSeekBar;->mSeekChangeListener:Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;

    return-void
.end method
