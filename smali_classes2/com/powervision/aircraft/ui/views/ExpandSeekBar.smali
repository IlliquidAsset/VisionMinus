.class public Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
.super Landroid/view/View;
.source "ExpandSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;,
        Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;,
        Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOUCH_TARGET_SIZE:I = 0x28


# instance fields
.field private final DEFAULT_TEXT_PADDING:I

.field private final DEFAULT_THUMB_COLOR:I

.field private disable:Z

.field private height:F

.field private isHonrizontal:Z

.field isTouchDown:Z

.field private isTouchOrderly:Z

.field private locations:[I

.field private mBackRectF:Landroid/graphics/RectF;

.field private mIsCenterState:Z

.field private mLastProgress:I

.field private mLastTime:J

.field private mMaxValue:Ljava/lang/String;

.field private mOnExpSeekBarChangeListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;

.field private mOnExpSeekBarFinishedListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;

.field private mOnExpSeekBarProgressListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;

.field private mOutPaint:Landroid/graphics/Paint;

.field private mOutPath:Landroid/graphics/Path;

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mPointPressedBitmap:Landroid/graphics/Bitmap;

.field private mProgressRectF:Landroid/graphics/RectF;

.field private mSideLinePaint:Landroid/graphics/Paint;

.field private mTextBackBitmap:Landroid/graphics/Bitmap;

.field private mTextBackColor:I

.field private mTextBackRadius:F

.field private mTextColor:I

.field private mTextLocation:F

.field private mTextRectF:Landroid/graphics/RectF;

.field private mTextSize:F

.field private mThumbColor:I

.field private mThumbDrawColor:I

.field private mThumbNormalRadius:F

.field private mThumbPressedRadius:F

.field private mThumbRadius:F

.field private maxProgress:I

.field private minProgress:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressBackColor:I

.field private progressBackHeight:F

.field private progressColor:I

.field private progressFrameColor:I

.field private progressFrameHeight:F

.field private progressHeight:F

.field private progressMinusColor:I

.field private progressPosition:F

.field showOthers:Z

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->DEFAULT_TEXT_PADDING:I

    const/high16 p1, -0x1000000

    .line 35
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->DEFAULT_THUMB_COLOR:I

    const/high16 p3, 0x43960000    # 300.0f

    .line 37
    iput p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    .line 39
    iput p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    const/4 p3, 0x0

    .line 43
    iput p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    .line 51
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackColor:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 56
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameColor:I

    const/high16 v2, 0x40400000    # 3.0f

    .line 65
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameHeight:F

    const v2, -0xff0100

    .line 69
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    .line 74
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    const/high16 v0, -0x10000

    .line 78
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressMinusColor:I

    const/16 v0, 0x32

    .line 83
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 87
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    const/high16 v2, 0x41c00000    # 24.0f

    .line 91
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbPressedRadius:F

    .line 95
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextLocation:F

    const/high16 v2, 0x42200000    # 40.0f

    .line 101
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    .line 105
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextColor:I

    .line 110
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackColor:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 115
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    .line 119
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    .line 123
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    const/4 v2, 0x1

    .line 127
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->showOthers:Z

    .line 128
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    .line 130
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    .line 132
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbDrawColor:I

    .line 137
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const-string p1, "80"

    .line 175
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    .line 501
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mLastProgress:I

    .line 159
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkTouchingTarget(Landroid/view/MotionEvent;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchingTarget(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    .line 565
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    :goto_0
    return-void
.end method

.method private drawCenterPoint(ZLandroid/graphics/Canvas;IIFFFFLandroid/graphics/Paint;)V
    .locals 1

    const/4 v0, -0x1

    .line 410
    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    int-to-float p1, p4

    .line 412
    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr p3, v0

    invoke-virtual {p2, p5, p1, p3, p9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 413
    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr p3, v0

    invoke-virtual {p2, p6, p1, p3, p9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 415
    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr p3, v0

    invoke-virtual {p2, p1, p7, p3, p9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr p3, v0

    invoke-virtual {p2, p1, p8, p3, p9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawSeekBar(Landroid/graphics/Canvas;IIFFFF)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    .line 280
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 285
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    int-to-float v2, v13

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 286
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 288
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 290
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    move/from16 v6, p5

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 292
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v0, v0

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    mul-float v0, v0, v1

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v5

    iput v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    goto/16 :goto_2

    :cond_0
    move/from16 v6, p5

    .line 294
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 295
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameHeight:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 297
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 299
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    if-eqz v0, :cond_2

    .line 306
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-gez v0, :cond_1

    .line 307
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressMinusColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    int-to-float v0, v12

    .line 310
    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v3, v3

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    div-float/2addr v4, v1

    mul-float v3, v3, v4

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v5, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iput v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    goto :goto_0

    .line 312
    :cond_2
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v0, v0

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    mul-float v0, v0, v3

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    iput v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    move v0, v5

    .line 314
    :goto_0
    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v4, v1

    sub-float v4, v2, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 315
    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 316
    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-lez v1, :cond_3

    .line 317
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 318
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 320
    :cond_3
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 321
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 323
    :goto_1
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move v5, v0

    .line 326
    :goto_2
    iget-boolean v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    iget-object v9, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawCenterPoint(ZLandroid/graphics/Canvas;IIFFFFLandroid/graphics/Paint;)V

    .line 330
    invoke-direct/range {p0 .. p3}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drowTouchPoint(Landroid/graphics/Canvas;II)V

    .line 331
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    if-eqz v0, :cond_9

    .line 332
    invoke-direct/range {p0 .. p3}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawThumb(Landroid/graphics/Canvas;II)V

    goto/16 :goto_6

    :cond_4
    move/from16 v6, p5

    .line 335
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    int-to-float v2, v12

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 336
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->top:F

    .line 337
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 338
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iput v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 339
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 341
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 343
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v0, v0

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    mul-float v0, v0, v1

    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v7, v0

    iput v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    goto/16 :goto_5

    .line 345
    :cond_5
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameHeight:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 353
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    if-eqz v0, :cond_7

    .line 360
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-gez v0, :cond_6

    .line 361
    iget-object v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressMinusColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    int-to-float v0, v13

    .line 364
    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v3, v3

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    div-float/2addr v4, v1

    mul-float v3, v3, v4

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v7, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iput v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    goto :goto_3

    .line 366
    :cond_7
    iget v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    int-to-float v0, v0

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    mul-float v0, v0, v3

    iget v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v7, v0

    iput v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    move v0, v7

    .line 368
    :goto_3
    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v4, v1

    sub-float v4, v2, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 369
    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 370
    iget v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-lez v1, :cond_8

    .line 371
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 372
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 374
    :cond_8
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 375
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 377
    :goto_4
    iget-object v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v3, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move v7, v0

    .line 380
    :goto_5
    iget-boolean v1, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    iget-object v9, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawCenterPoint(ZLandroid/graphics/Canvas;IIFFFFLandroid/graphics/Paint;)V

    .line 384
    invoke-direct/range {p0 .. p3}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drowTouchPoint(Landroid/graphics/Canvas;II)V

    .line 385
    iget-boolean v0, v10, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    if-eqz v0, :cond_9

    .line 386
    invoke-direct/range {p0 .. p3}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawThumb(Landroid/graphics/Canvas;II)V

    :cond_9
    :goto_6
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 466
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextLocation:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    const v0, -0xff0100

    .line 467
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackColor:I

    .line 468
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v0, :cond_0

    .line 470
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    int-to-float p3, p3

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbPressedRadius:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v2

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 471
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 472
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    add-float/2addr p3, v0

    add-float/2addr p3, v3

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 473
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v3

    iput p3, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 475
    :cond_0
    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbPressedRadius:F

    sub-float/2addr p2, v0

    sub-float/2addr p2, v2

    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 476
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 477
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    add-float/2addr p3, v0

    add-float/2addr p3, v3

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 478
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 481
    :goto_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    .line 482
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 484
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 487
    :goto_1
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 488
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 491
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const-string p3, "%"

    if-eqz p2, :cond_2

    .line 492
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 493
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 495
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p3, v2

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private drawUnusedLines(Landroid/graphics/Canvas;IIFFF)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 425
    iget-boolean v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->showOthers:Z

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const/16 v5, 0x1e

    const/16 v6, 0x28

    .line 429
    iget-object v7, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 431
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 433
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 435
    iget-boolean v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const-string v6, "0"

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    int-to-float v2, v5

    .line 437
    iget v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    add-float/2addr v4, v2

    add-int/lit8 v5, v3, 0xf

    int-to-float v5, v5

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 439
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    iget v6, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    add-float/2addr v6, p4

    iget v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v8, v8, v9

    add-float/2addr v6, v8

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    :cond_0
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget v5, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v5, v5, v7

    add-float/2addr v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 444
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget v5, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr v5, v7

    sub-float v5, p4, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 445
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 447
    iget v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v5, v4, v7

    add-float/2addr v5, v2

    add-int/lit8 v6, v3, 0x14

    int-to-float v6, v6

    mul-float v4, v4, v7

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mSideLinePaint:Landroid/graphics/Paint;

    move p2, v5

    move p3, v6

    move p4, v2

    move p5, v3

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float v3, v2

    .line 450
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    iget v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    sub-float/2addr v4, v8

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 452
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    iget v6, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v6, v6, v7

    sub-float v6, p6, v6

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    :cond_2
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    int-to-float v6, v6

    iget v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v8, v8, v7

    sub-float/2addr v6, v8

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 455
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    div-float/2addr v6, v7

    add-float/2addr v6, p5

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    iget-object v3, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v2, 0x14

    int-to-float v3, v3

    .line 459
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v5

    iget v6, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    sub-float/2addr v4, v6

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    .line 460
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v8, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    mul-float v8, v8, v7

    add-float/2addr v5, v8

    sub-float v5, v6, v5

    iget-object v6, v0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mSideLinePaint:Landroid/graphics/Paint;

    move p2, v3

    move p3, v4

    move p4, v2

    move p5, v5

    move-object/from16 p6, v6

    .line 458
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drowTouchPoint(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mPointPressedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 399
    iget-boolean v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    if-eqz v2, :cond_1

    .line 400
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 401
    :goto_0
    iget p2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 403
    :cond_1
    iget-boolean p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 404
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    .line 396
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "point bitmap is null ..."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getProgress(I)F
    .locals 6

    .line 593
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    .line 594
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 595
    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    div-float v4, v3, v1

    sub-float v4, v2, v4

    div-float v5, v3, v1

    add-float/2addr v2, v5

    if-le p1, v0, :cond_1

    int-to-float v4, p1

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_0

    .line 599
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    :goto_0
    int-to-float p1, p1

    return p1

    .line 601
    :cond_0
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    :goto_1
    sub-int/2addr v2, v4

    sub-int/2addr p1, v0

    mul-int v2, v2, p1

    int-to-float p1, v2

    div-float/2addr v3, v1

    div-float/2addr p1, v3

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_3

    int-to-float v2, p1

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    .line 605
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    neg-int p1, p1

    goto :goto_0

    .line 607
    :cond_2
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    goto :goto_1

    .line 610
    :cond_3
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    goto :goto_0

    .line 613
    :cond_4
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    if-eqz v0, :cond_7

    .line 614
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 615
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    div-float v3, v2, v1

    sub-float v3, v0, v3

    div-float v1, v2, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 618
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    goto :goto_0

    :cond_5
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_6

    .line 620
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    goto :goto_0

    .line 622
    :cond_6
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v3

    mul-float v0, v0, p1

    :goto_2
    div-float/2addr v0, v2

    return v0

    .line 625
    :cond_7
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 626
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    div-float v3, v2, v1

    add-float/2addr v3, v0

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    int-to-float p1, p1

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_8

    .line 629
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    goto :goto_0

    :cond_8
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_9

    .line 631
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    goto :goto_0

    .line 633
    :cond_9
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v3, p1

    mul-float v0, v0, v3

    goto :goto_2
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 166
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextRectF:Landroid/graphics/RectF;

    .line 167
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mBackRectF:Landroid/graphics/RectF;

    .line 168
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mProgressRectF:Landroid/graphics/RectF;

    .line 170
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->initOutLinePaint()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 171
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->locations:[I

    return-void
.end method

.method private initOutLinePaint()V
    .locals 5

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 187
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 191
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 192
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOutPath:Landroid/graphics/Path;

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mSideLinePaint:Landroid/graphics/Paint;

    .line 195
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mSideLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mSideLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_honrizontal_mode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    .line 205
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_maxProgress:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    .line 206
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_minProgress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    .line 207
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_width:I

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    .line 208
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    .line 209
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_centerState:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    .line 210
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_backColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackColor:I

    .line 211
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_backBarHeight:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    .line 212
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_backFrameColor:I

    const v4, -0xffff01

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameColor:I

    .line 213
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_backFrameSize:I

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressFrameHeight:F

    .line 214
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_progressColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressColor:I

    .line 215
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_progressHeight:I

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressBackHeight:F

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressHeight:F

    .line 217
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_progressMinusColor:I

    const/high16 v4, -0x10000

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressMinusColor:I

    .line 218
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_progress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    .line 219
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_thumbNormalRadius:I

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    .line 221
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_thumbPressRadius:I

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbPressedRadius:F

    .line 223
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_thumbColor:I

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbColor:I

    .line 224
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textLocation:I

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextLocation:F

    .line 225
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextColor:I

    .line 226
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textSize:I

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextSize:F

    .line 227
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textBackColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackColor:I

    .line 228
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textBackRadius:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackRadius:F

    .line 229
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_disable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    .line 230
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_textBackBitmap:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mTextBackBitmap:Landroid/graphics/Bitmap;

    .line 237
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_pointBitmap:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 240
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 244
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftExpSeekBar_aircraft_pointPressedBitmap:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 247
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mPointPressedBitmap:Landroid/graphics/Bitmap;

    .line 250
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbNormalRadius:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    .line 251
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbColor:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbDrawColor:I

    .line 252
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method private isTouchingTarget(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->locations:[I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getLocationOnScreen([I)V

    .line 577
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 578
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float v5, v0, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 580
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 581
    :cond_2
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    goto :goto_4

    .line 583
    :cond_3
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progressPosition:F

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->locations:[I

    aget v4, v4, v3

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float v5, v0, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 585
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    .line 586
    :cond_6
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    .line 588
    :goto_4
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    return p1
.end method


# virtual methods
.method public doCallBack()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarChangeListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 546
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-interface {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;->onProgress(I)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarProgressListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;

    if-eqz v0, :cond_1

    .line 548
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-interface {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;->onProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    return v0
.end method

.method public getProgress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 553
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isHonrizontal:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 555
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getProgress(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->locations:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p1, v0

    .line 558
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getProgress(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    :goto_0
    return-void
.end method

.method public isDisable()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 266
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 268
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    int-to-float v1, v0

    .line 269
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v9, v1, v4

    div-float/2addr v2, v3

    add-float v10, v1, v2

    int-to-float v1, v8

    .line 271
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->height:F

    div-float v4, v2, v3

    add-float v11, v1, v4

    div-float/2addr v2, v3

    sub-float v12, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v11

    move v7, v12

    .line 274
    invoke-direct/range {v1 .. v7}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawUnusedLines(Landroid/graphics/Canvas;IIFFF)V

    move v6, v10

    move v7, v11

    move v8, v12

    .line 275
    invoke-direct/range {v1 .. v8}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->drawSeekBar(Landroid/graphics/Canvas;IIFFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 506
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    if-eqz v0, :cond_7

    .line 515
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->getProgress(Landroid/view/MotionEvent;)V

    .line 516
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mLastProgress:I

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 519
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 520
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mLastTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x32

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    goto :goto_0

    .line 523
    :cond_3
    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mLastTime:J

    .line 524
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    .line 525
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->doCallBack()V

    goto :goto_0

    .line 529
    :cond_4
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchDown:Z

    .line 530
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    const/4 p1, -0x1

    .line 531
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mLastProgress:I

    .line 532
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->isTouchOrderly:Z

    if-eqz p1, :cond_7

    .line 533
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarChangeListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;

    if-eqz p1, :cond_5

    .line 534
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;->onFinished(I)V

    goto :goto_0

    .line 535
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarFinishedListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;

    if-eqz p1, :cond_7

    .line 536
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;->onFinished(I)V

    goto :goto_0

    .line 511
    :cond_6
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->checkTouchingTarget(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v1
.end method

.method public setCenterModeEnable(Z)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 662
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 663
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    .line 667
    :cond_0
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    .line 668
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    return-object p0
.end method

.method public setDisable(Z)V
    .locals 0

    .line 702
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->disable:Z

    .line 703
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    return-void
.end method

.method public setMThumbRadius(F)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setMaxValue(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mMaxValue:Ljava/lang/String;

    return-void
.end method

.method public setOnExpSeekBarChangeListener(Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarChangeListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarChangeListener;

    return-object p0
.end method

.method public setOnExpSeekBarFinishedListener(Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarFinishedListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarFinishedListener;

    return-object p0
.end method

.method public setOnExpSeekBarProgressListener(Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mOnExpSeekBarProgressListener:Lcom/powervision/aircraft/ui/views/ExpandSeekBar$OnExpSeekBarProgressListener;

    return-object p0
.end method

.method public setProgress(I)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 2

    .line 673
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mIsCenterState:Z

    if-eqz v0, :cond_1

    .line 674
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    if-gt p1, v0, :cond_0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_0

    .line 675
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    goto :goto_0

    .line 677
    :cond_0
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    goto :goto_0

    .line 680
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    if-lt p1, v0, :cond_2

    .line 681
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    goto :goto_0

    .line 682
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->maxProgress:I

    if-le p1, v0, :cond_3

    .line 683
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    goto :goto_0

    .line 685
    :cond_3
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->minProgress:I

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    .line 688
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    return-object p0
.end method

.method public setProgressEnable(Z)Lcom/powervision/aircraft/ui/views/ExpandSeekBar;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 648
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->setEnabled(Z)V

    .line 649
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbColor:I

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbDrawColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 651
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->setEnabled(Z)V

    .line 652
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->progress:I

    const/high16 p1, -0x1000000

    .line 653
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->mThumbDrawColor:I

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpandSeekBar;->invalidate()V

    return-object p0
.end method
