.class public Lcom/powervision/aircraft/ui/views/TouchRectangleView;
.super Landroid/view/View;
.source "TouchRectangleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

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

.field private hArray:[F

.field height:I

.field height1:I

.field private isDrawFrame:Z

.field public isNeedTouch:Z

.field isTouch:Z

.field private mAideLineColor:I

.field private mAidePaint:Landroid/graphics/Paint;

.field private mClickCoordinate:[F

.field private mCompassBitmap:Landroid/graphics/Bitmap;

.field private mCompassPaint:Landroid/graphics/Paint;

.field private mContentColor:I

.field private mContentPaint:Landroid/graphics/Paint;

.field private mHalfStrokeWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectangleLineColor:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShadowRect:Landroid/graphics/Rect;

.field private mStrokeWidth:I

.field private offset:I

.field private offsetLong:I

.field private pointIconHeight:I

.field private pointIconWidth:I

.field private rectF:Landroid/graphics/RectF;

.field private status:I

.field private thouchGuideListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;",
            ">;"
        }
    .end annotation
.end field

.field private wArray:[F

.field weith:I

.field weith1:I

.field private xArray:[F

.field x_Array:[I

.field private yArray:[F

.field y_Array:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    .line 34
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    .line 35
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    const/16 v0, 0x1e

    .line 36
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    const/16 v0, 0x14

    .line 37
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    const v0, -0xffff01

    .line 42
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAideLineColor:I

    const v0, -0x777778

    .line 43
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentColor:I

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isDrawFrame:Z

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 491
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->x_Array:[I

    new-array v0, v0, [I

    .line 492
    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->y_Array:[I

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 34
    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    .line 35
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    const/16 p3, 0x1e

    .line 36
    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    const/16 p3, 0x14

    .line 37
    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    .line 38
    new-instance p3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    .line 39
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    const p3, -0xffff01

    .line 42
    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAideLineColor:I

    const p3, -0x777778

    .line 43
    iput p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentColor:I

    const/4 p3, 0x1

    .line 161
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isDrawFrame:Z

    const/4 p3, 0x4

    new-array v0, p3, [I

    .line 491
    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->x_Array:[I

    new-array p3, p3, [I

    .line 492
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->y_Array:[I

    .line 587
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkIsClick()Z
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doClick(II)V
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 542
    :goto_0
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 543
    aget v2, v2, v1

    iget v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    int-to-float v4, v3

    mul-float v2, v2, v4

    .line 544
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    aget v4, v4, v1

    iget v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    .line 545
    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    aget v6, v6, v1

    int-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    .line 546
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    aget v3, v3, v1

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    int-to-float v5, p1

    cmpl-float v7, v5, v2

    if-lez v7, :cond_0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    int-to-float v5, p2

    cmpl-float v7, v5, v4

    if-lez v7, :cond_0

    cmpg-float v5, v5, v3

    if-gez v5, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 549
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    aput v2, p1, v0

    const/4 p2, 0x1

    aput v4, p1, p2

    const/4 p2, 0x2

    aput v6, p1, p2

    const/4 p2, 0x3

    aput v3, p1, p2

    .line 554
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->invalidate()V

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

    .line 573
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 574
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 575
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->invalidate()V

    return-void
.end method

.method private doTouch(II)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 563
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 565
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 566
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 567
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 568
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private drawAideLines(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 7

    .line 238
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_0

    .line 240
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr p1, v0

    int-to-float v5, p1

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 258
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_1

    .line 260
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 262
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 267
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 270
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr p1, v0

    int-to-float v5, p1

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 279
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_2

    .line 281
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr p1, v0

    int-to-float v5, p1

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 301
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    if-le v0, v1, :cond_3

    .line 303
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 305
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 310
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 313
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    sub-int/2addr p1, v0

    int-to-float v5, p1

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drawFloatAideLines(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 326
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 328
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v10, v2, v3

    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 339
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 342
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 344
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v2, v2

    sub-float v14, v1, v2

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 346
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 348
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 350
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v2, v2

    sub-float v14, v1, v2

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 367
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 369
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 384
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v2, v2

    sub-float v14, v1, v2

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 389
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offset:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 391
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 393
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 401
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    add-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 408
    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    int-to-float v3, v3

    add-float v12, v2, v3

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->offsetLong:I

    int-to-float v2, v2

    sub-float v14, v1, v2

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 79
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->context:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    .line 81
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    .line 82
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->initPaint()V

    return-void
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/aircraft/R$styleable;->AircraftTouchRectangleView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 121
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftTouchRectangleView_aircraft_rec_line_color:I

    const v1, -0xff0100

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRectangleLineColor:I

    .line 123
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftTouchRectangleView_aircraft_rec_aide_line_color:I

    const v1, -0xffff01

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAideLineColor:I

    .line 125
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftTouchRectangleView_aircraft_rec_line_width:I

    .line 126
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    .line 127
    sget v0, Lcom/powervision/aircraft/R$styleable;->AircraftTouchRectangleView_aircraft_rec_content_color:I

    const v1, -0x777778

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentColor:I

    .line 129
    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mHalfStrokeWidth:I

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private isRectIntersect(IIIIIIII)Z
    .locals 6

    sub-int v0, p2, p1

    .line 510
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p6, p5

    .line 511
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p4, p3

    .line 512
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p8, p7

    .line 513
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 514
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->x_Array:[I

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 p1, 0x1

    .line 515
    aput p2, v4, p1

    const/4 p2, 0x2

    .line 516
    aput p5, v4, p2

    const/4 p5, 0x3

    .line 517
    aput p6, v4, p5

    .line 518
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 519
    iget-object p6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->y_Array:[I

    aput p3, p6, v5

    .line 520
    aput p4, p6, p1

    .line 521
    aput p7, p6, p2

    .line 522
    aput p8, p6, p5

    .line 523
    invoke-static {p6}, Ljava/util/Arrays;->sort([I)V

    .line 524
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->x_Array:[I

    aget p3, p2, p5

    aget p2, p2, v5

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 525
    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->y_Array:[I

    aget p4, p3, p5

    aget p3, p3, v5

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return v5
.end method

.method private onDrawClickFrame(Landroid/graphics/Canvas;)V
    .locals 11

    .line 194
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v8, 0x1

    aget v4, v0, v8

    const/4 v9, 0x2

    aget v5, v0, v9

    const/4 v10, 0x3

    aget v6, v0, v10

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    aget v3, v0, v1

    aget v4, v0, v8

    aget v5, v0, v9

    aget v6, v0, v10

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    return-void
.end method

.method private onDrawTrack(Landroid/graphics/Canvas;)V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x405b79999999999aL    # 109.9

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 207
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->rectF:Landroid/graphics/RectF;

    .line 208
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 210
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->drawFloatAideLines(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 212
    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 214
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getVisionDetectInfo([F[F[F[FI)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 108
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    .line 109
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    .line 110
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    .line 111
    iput-object p4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    .line 113
    :cond_0
    iput p5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->count:I

    .line 114
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->postInvalidate()V

    return-void
.end method

.method public getVisionTrackInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->followList:Ljava/util/List;

    .line 103
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->postInvalidate()V

    return-void
.end method

.method initPaint()V
    .locals 3

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    shr-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRectangleLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAidePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mAideLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_oval_icon1:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->pointIconWidth:I

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->pointIconHeight:I

    return-void
.end method

.method public isWaterOrNormal(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->status:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 165
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 166
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isTouch:Z

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 168
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_2
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_3
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->drawAideLines(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 180
    :cond_4
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->onDrawTrack(Landroid/graphics/Canvas;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->onDrawDetect(Landroid/graphics/Canvas;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    if-eqz v0, :cond_5

    .line 184
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->onDrawClickFrame(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public onDrawDetect(Landroid/graphics/Canvas;)V
    .locals 8

    .line 224
    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->count:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :goto_0
    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->count:I

    if-ge v1, v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    aget v5, v5, v1

    int-to-float v4, v4

    mul-float v5, v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->pointIconWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    int-to-float v7, v6

    mul-float v5, v5, v7

    iget-object v7, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    aget v7, v7, v1

    int-to-float v6, v6

    mul-float v7, v7, v6

    div-float/2addr v7, v4

    add-float/2addr v5, v7

    iget v6, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->pointIconHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mCompassPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->count:I

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 421
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_7

    goto/16 :goto_5

    :cond_0
    const/4 p1, 0x0

    .line 432
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isTouch:Z

    .line 434
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->checkIsClick()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-direct {p0, v0, v11}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->doClick(II)V

    .line 436
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mClickCoordinate:[F

    if-eqz v0, :cond_1

    .line 437
    aget v3, v0, p1

    float-to-int v3, v3

    .line 438
    aget v4, v0, v1

    float-to-int v4, v4

    .line 439
    aget v2, v0, v2

    aget p1, v0, p1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    const/4 p1, 0x3

    .line 440
    aget p1, v0, p1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    move p1, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-lez p1, :cond_8

    .line 442
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;

    .line 444
    iget v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    iget v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    invoke-interface {v2, p1, v4, v3, v5}, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;->onTouchView(IIII)V

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->invalidate()V

    .line 449
    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->status:I

    if-nez v2, :cond_3

    .line 450
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 451
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 452
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    .line 453
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    if-lez p1, :cond_8

    .line 454
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 455
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;

    .line 456
    iget v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    iget v5, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    invoke-interface {v3, p1, v0, v4, v5}, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;->onTouchView(IIII)V

    goto :goto_2

    :cond_3
    if-ne v2, v1, :cond_8

    .line 460
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    if-eqz v2, :cond_8

    .line 461
    :goto_3
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->xArray:[F

    array-length v3, v2

    if-ge p1, v3, :cond_8

    .line 462
    aget v2, v2, p1

    iget v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    int-to-float v4, v3

    mul-float v2, v2, v4

    float-to-int v12, v2

    .line 463
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->yArray:[F

    aget v2, v2, p1

    iget v4, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    int-to-float v5, v4

    mul-float v2, v2, v5

    float-to-int v13, v2

    .line 464
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    aget v2, v2, p1

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v12

    iput v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith1:I

    .line 465
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    aget v2, v2, p1

    int-to-float v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v13

    iput v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height1:I

    .line 466
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith1:I

    iget v10, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height1:I

    move-object v2, p0

    move v4, v0

    move v6, v11

    move v7, v12

    move v9, v13

    invoke-direct/range {v2 .. v10}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isRectIntersect(IIIIIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->wArray:[F

    aget v0, v0, p1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    .line 468
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->hArray:[F

    aget p1, v0, p1

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    if-lez v12, :cond_4

    .line 469
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;

    .line 471
    iget v2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->weith:I

    iget v3, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->height:I

    invoke-interface {v0, v12, v13, v2, v3}, Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;->onTouchView(IIII)V

    goto :goto_4

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->invalidate()V

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 426
    :cond_6
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isTouch:Z

    .line 427
    invoke-direct {p0, v0, v11}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->doTouch(II)V

    .line 429
    :cond_7
    invoke-direct {p0, v0, v11}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->doMove(II)V

    :cond_8
    :goto_5
    return v1
.end method

.method public removeListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setThouchGuideListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->thouchGuideListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 1

    .line 96
    iput p1, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    .line 97
    iput p2, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    const-string p1, "rectangle"

    .line 98
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "width= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->mScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
