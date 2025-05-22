.class public Lcom/powervision/handheld/ui/views/TouchRectangleView;
.super Landroid/view/View;
.source "TouchRectangleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;
    }
.end annotation


# instance fields
.field private count:I

.field private followList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:[F

.field private isDrawFrame:Z

.field private isLongPress:Z

.field private isLost:Z

.field private labels:[S

.field private mAideLineColor:I

.field private mAidePaint:Landroid/graphics/Paint;

.field private mClickCoordinate:[F

.field private mCloseRect:Landroid/graphics/RectF;

.field private mCloseWidth:I

.field private mCompassBitmap:Landroid/graphics/Bitmap;

.field private mCompassPaint:Landroid/graphics/Paint;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHalfStrokeWidth:I

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectangleLineColor:I

.field private mShadowRect:Landroid/graphics/Rect;

.field private mSimpleGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStrokeWidth:I

.field private mTouchGuideListener:Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

.field private mWidth:I

.field private offset:I

.field private offsetLong:I

.field private w:[F

.field private x:[F

.field private y:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 36
    iput p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mStrokeWidth:I

    .line 37
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    const/16 p3, 0x1e

    .line 38
    iput p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    const/16 p3, 0x14

    .line 39
    iput p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    .line 40
    new-instance p3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    .line 41
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    const p3, -0xffff01

    .line 43
    iput p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAideLineColor:I

    .line 56
    new-instance p3, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    .line 63
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    const/4 p3, 0x1

    .line 65
    iput-boolean p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    .line 450
    new-instance p3, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;

    invoke-direct {p3, p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;-><init>(Lcom/powervision/handheld/ui/views/TouchRectangleView;)V

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mSimpleGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/views/TouchRectangleView;FF)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->doClick(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mClickCoordinate:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mTouchGuideListener:Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/handheld/ui/views/TouchRectangleView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    return p1
.end method

.method static synthetic access$402(Lcom/powervision/handheld/ui/views/TouchRectangleView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/handheld/ui/views/TouchRectangleView;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->doTouch(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/handheld/ui/views/TouchRectangleView;II)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->checkIsCloseClick(II)Z

    move-result p0

    return p0
.end method

.method private checkIsCloseClick(II)Z
    .locals 2

    int-to-float p1, p1

    .line 505
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private doClick(FF)V
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->x:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->y:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->w:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->h:[F

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->x:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 419
    aget v2, v2, v1

    iget v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    int-to-float v4, v3

    mul-float v2, v2, v4

    .line 420
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->y:[F

    aget v4, v4, v1

    iget v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    .line 421
    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->w:[F

    aget v6, v6, v1

    int-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    .line 422
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->h:[F

    aget v3, v3, v1

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    cmpl-float v5, p1, v2

    if-lez v5, :cond_0

    cmpg-float v5, p1, v6

    if-gez v5, :cond_0

    cmpl-float v5, p2, v4

    if-lez v5, :cond_0

    cmpg-float v5, p2, v3

    if-gez v5, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 425
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mClickCoordinate:[F

    aput v2, p1, v0

    const/4 p2, 0x1

    aput v4, p1, p2

    const/4 p2, 0x2

    aput v6, p1, p2

    const/4 p2, 0x3

    aput v3, p1, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private doMove(II)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 446
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 447
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->invalidate()V

    return-void
.end method

.method private doTouch(II)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 438
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 439
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 440
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private drawAideLines(Landroid/graphics/Canvas;)V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 304
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 306
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 309
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_2

    .line 320
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_3

    .line 342
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 344
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 357
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drawClose(Landroid/graphics/Canvas;FFFF)V
    .locals 3

    .line 247
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p5

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 248
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    int-to-float p3, v1

    sub-float p3, p4, p3

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 249
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p3, p3

    sub-float p3, p5, p3

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 250
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p3, p3

    add-float/2addr p4, p3

    iput p4, p2, Landroid/graphics/RectF;->right:F

    .line 251
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p3, p3

    add-float/2addr p5, p3

    iput p5, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 252
    :cond_0
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p5

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 253
    iget-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    int-to-float p4, v0

    sub-float p4, p2, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 254
    iget-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p4, p4

    sub-float p4, p5, p4

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 255
    iget-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p4, p4

    add-float/2addr p2, p4

    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 256
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p3, p3

    add-float/2addr p5, p3

    iput p5, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 257
    :cond_1
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    int-to-float v0, v1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 258
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    int-to-float p5, v1

    sub-float p5, p4, p5

    iput p5, p2, Landroid/graphics/RectF;->left:F

    .line 259
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p5, p5

    sub-float p5, p3, p5

    iput p5, p2, Landroid/graphics/RectF;->top:F

    .line 260
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p5, p5

    add-float/2addr p4, p5

    iput p4, p2, Landroid/graphics/RectF;->right:F

    .line 261
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 262
    :cond_2
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    int-to-float v1, v0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    .line 263
    iget-object p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    int-to-float p5, v0

    sub-float p5, p2, p5

    iput p5, p4, Landroid/graphics/RectF;->left:F

    .line 264
    iget-object p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p5, p5

    sub-float p5, p3, p5

    iput p5, p4, Landroid/graphics/RectF;->top:F

    .line 265
    iget-object p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p5, p5

    add-float/2addr p2, p5

    iput p2, p4, Landroid/graphics/RectF;->right:F

    .line 266
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 268
    :cond_3
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p4, p3

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 269
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p5, p3

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 270
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iput p4, p2, Landroid/graphics/RectF;->right:F

    .line 271
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iput p5, p2, Landroid/graphics/RectF;->bottom:F

    .line 273
    :goto_0
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    iget-object p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCompassPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrameCorner(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    sub-float v0, p4, p2

    .line 213
    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    int-to-float v0, v1

    add-float v3, p2, v0

    .line 215
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    sub-float v1, p4, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    add-float v3, p2, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p5

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    sub-float v1, p4, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move v2, p5

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    sub-float v0, p5, p3

    .line 224
    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    int-to-float v0, v1

    add-float v4, p3, v0

    .line 226
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    sub-float v2, p5, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    add-float v4, p3, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p4

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    int-to-float v0, v0

    sub-float v2, p5, v0

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 233
    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move v1, p4

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private getDetectRect(FFFF)Landroid/graphics/Rect;
    .locals 2

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 519
    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 520
    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr p1, p3

    .line 521
    iget p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-float/2addr p2, p4

    .line 522
    iget p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 82
    invoke-static {p1}, Lcom/powervision/base/utils/ScreenUtils;->getFollowScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    .line 83
    invoke-static {p1}, Lcom/powervision/base/utils/ScreenUtils;->getFollowScreenHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    .line 84
    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    if-ge v0, p2, :cond_0

    mul-int/lit8 v0, v0, 0x9

    .line 85
    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x10

    .line 87
    div-int/lit8 p2, p2, 0x9

    iput p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    :goto_0
    const-string p2, "rectangle"

    .line 89
    invoke-static {p2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width 1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->initPaint()V

    .line 91
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mSimpleGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/handheld/R$styleable;->HandheldTouchRectangleView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    sget v0, Lcom/powervision/handheld/R$styleable;->HandheldTouchRectangleView_handheld_rec_line_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRectangleLineColor:I

    .line 131
    sget v0, Lcom/powervision/handheld/R$styleable;->HandheldTouchRectangleView_handheld_rec_aide_line_color:I

    const v1, -0xff0100

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAideLineColor:I

    .line 132
    sget v0, Lcom/powervision/handheld/R$styleable;->HandheldTouchRectangleView_handheld_rec_line_width:I

    .line 133
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/powervision/handheld/utils/DpiUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mStrokeWidth:I

    .line 134
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private onDrawClickFrame(Landroid/graphics/Canvas;)V
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mClickCoordinate:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v1, 0x2

    aget v5, v0, v1

    const/4 v1, 0x3

    aget v6, v0, v1

    iget-object v7, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mClickCoordinate:[F

    return-void
.end method

.method private onDrawTrack(Landroid/graphics/Canvas;)V
    .locals 11

    .line 189
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x405dffef9db22d0eL    # 119.999

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    .line 191
    iput-boolean v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    goto/16 :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRectangleLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->drawFrameCorner(Landroid/graphics/Canvas;FFFF)V

    .line 198
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->drawClose(Landroid/graphics/Canvas;FFFF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getVisionDetectInfo([F[F[F[FIJ[S[F)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->x:[F

    .line 114
    iput-object p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->y:[F

    .line 115
    iput-object p3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->w:[F

    .line 116
    iput-object p4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->h:[F

    .line 117
    iput-object p8, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->labels:[S

    .line 118
    iput p5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->count:I

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    .line 121
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->postInvalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    :goto_0
    return-void
.end method

.method public getVisionTrackInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    .line 107
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method initPaint()V
    .locals 3

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRectangleLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mAideLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/handheld/R$mipmap;->hand_green_close:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x41800000    # 16.0f

    .line 153
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCloseWidth:I

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mCompassPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 162
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_2
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 164
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_3
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->drawAideLines(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mClickCoordinate:[F

    if-eqz v0, :cond_5

    .line 169
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->onDrawClickFrame(Landroid/graphics/Canvas;)V

    return-void

    .line 172
    :cond_5
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isDrawFrame:Z

    if-eqz v0, :cond_6

    .line 173
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->onDrawTrack(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 367
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 368
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 402
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    goto/16 :goto_1

    .line 373
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->doMove(II)V

    goto/16 :goto_1

    .line 376
    :cond_1
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->isLongPress:Z

    .line 377
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mTouchGuideListener:Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 380
    :goto_0
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->w:[F

    if-eqz v2, :cond_3

    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 382
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->x:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->y:[F

    aget v5, v5, v3

    aget v2, v2, v3

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->h:[F

    aget v6, v6, v3

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getDetectRect(FFFF)Landroid/graphics/Rect;

    move-result-object v2

    .line 383
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 386
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int v4, v4, v5

    int-to-float v4, v4

    cmpg-float v5, v0, v4

    if-gez v5, :cond_2

    const-string p1, "touchV"

    .line 388
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9762\u79ef "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    move-object p1, v2

    move v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 395
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mTouchGuideListener:Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p1

    int-to-float p1, v5

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;->onTouchView(FFFF)V

    .line 399
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->invalidate()V

    :cond_5
    :goto_1
    return v1
.end method

.method public setTouchGuideListener(Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mTouchGuideListener:Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 1

    .line 100
    iput p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    .line 101
    iput p2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    const-string p1, "rectangle"

    .line 102
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "width= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
