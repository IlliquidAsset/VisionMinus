.class public Lcom/lewis/edit/widgets/EditCenterSeekBarView;
.super Landroid/view/View;
.source "EditCenterSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;,
        Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;,
        Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_PADDING:I = 0xa

.field private static final DEFAULT_THUMB_COLOR:I = -0x777778

.field private static final DEFAULT_TOUCH_TARGET_SIZE:I = 0x28


# instance fields
.field private isTouchLegal:Z

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBackRectF:Landroid/graphics/RectF;

.field private mIsCenterState:Z

.field private mLastTime:J

.field private mOnSeekBarChangeListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;

.field private mOnSeekBarFinishedListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;

.field private mOnSeekBarProgressListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;

.field private mProgressRectF:Landroid/graphics/RectF;

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

.field private final paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressBackColor:I

.field private progressBackHeight:F

.field private progressColor:I

.field private progressFrameColor:I

.field private progressFrameHeight:F

.field private progressHeight:F

.field private progressPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    const/16 p3, 0x64

    .line 41
    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    const/high16 v0, -0x1000000

    .line 45
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackColor:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 50
    iput v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameColor:I

    const/high16 v3, 0x40400000    # 3.0f

    .line 59
    iput v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameHeight:F

    const v4, -0xff0100

    .line 63
    iput v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressColor:I

    const/high16 v5, 0x41a00000    # 20.0f

    .line 68
    iput v5, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressHeight:F

    const/16 v5, 0x32

    .line 72
    iput v5, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    const/high16 v6, 0x41600000    # 14.0f

    .line 76
    iput v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbNormalRadius:F

    const/high16 v7, 0x41c00000    # 24.0f

    .line 80
    iput v7, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    const v7, -0x777778

    .line 84
    iput v7, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbColor:I

    const/high16 v8, 0x40000000    # 2.0f

    .line 86
    iput v8, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextLocation:F

    const/high16 v8, 0x42200000    # 40.0f

    .line 90
    iput v8, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    .line 94
    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextColor:I

    const v8, 0x7dd2d3d4

    .line 99
    iput v8, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackColor:I

    .line 104
    iput v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    .line 108
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    .line 109
    iput v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbRadius:F

    .line 111
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isTouchLegal:Z

    .line 114
    iput v7, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbDrawColor:I

    .line 129
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    .line 130
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView:[I

    invoke-virtual {v6, p2, v7, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    sget v6, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editMaxProgress:I

    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    .line 135
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editMinProgress:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    .line 136
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editCenterState:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    .line 137
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editBackColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackColor:I

    .line 138
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editBackHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    .line 139
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editBackFrameColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameColor:I

    .line 140
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editBackFrameSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameHeight:F

    .line 141
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editProgressColor:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressColor:I

    .line 142
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editProgressHeight:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressHeight:F

    .line 143
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editProgress:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    .line 144
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editThumbNormalRadius:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbNormalRadius:F

    .line 145
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editThumbPressRadius:I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    .line 146
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editThumbColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbColor:I

    .line 147
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editProgressColor:I

    const v0, -0xffff01

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressColor:I

    .line 148
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editTextColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextColor:I

    .line 149
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editTextSize:I

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    .line 150
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editTextBackColor:I

    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackColor:I

    .line 151
    sget p3, Lcom/lewis/edit/R$styleable;->EditCenterSeekBarView_editTextBackRadius:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    .line 152
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 156
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    .line 157
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    .line 158
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private checkTouchingTarget(Landroid/view/MotionEvent;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isTouchingTarget(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x1

    .line 368
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 369
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private clamp(I)F
    .locals 5

    .line 425
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 426
    iget-boolean v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    if-eqz v1, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 428
    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-le p1, v1, :cond_1

    int-to-float v3, p1

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    .line 432
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    :goto_0
    int-to-float p1, p1

    return p1

    .line 434
    :cond_0
    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    :goto_1
    sub-int/2addr v2, v3

    sub-int/2addr p1, v1

    mul-int v2, v2, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_3

    int-to-float v2, p1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 438
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    neg-int p1, p1

    goto :goto_0

    .line 440
    :cond_2
    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    goto :goto_1

    .line 443
    :cond_3
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    goto :goto_0

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 447
    div-int/lit8 v2, v0, 0x2

    sub-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float p1, p1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 450
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    goto :goto_0

    :cond_5
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_6

    .line 452
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    goto :goto_0

    .line 454
    :cond_6
    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v3

    mul-float v1, v1, p1

    int-to-float p1, v0

    div-float/2addr v1, p1

    return v1
.end method

.method private getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 392
    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbRadius:F

    const/4 v2, 0x0

    aput v1, v0, v2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbNormalRadius:F

    :goto_0
    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "mThumbRadius"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 396
    new-instance v0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$1;-><init>(Lcom/lewis/edit/widgets/EditCenterSeekBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    new-instance v0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;-><init>(Lcom/lewis/edit/widgets/EditCenterSeekBarView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private isTouchingTarget(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 377
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    sub-float v3, v0, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isTouchLegal:Z

    return p1
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 233
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 235
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 236
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 237
    div-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    .line 240
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iput v3, v4, Landroid/graphics/RectF;->left:F

    .line 244
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    int-to-float v1, v1

    iget v5, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    sub-float v5, v1, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 245
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    int-to-float v5, v2

    add-float v6, v3, v5

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 246
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 247
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    iget-object v7, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 248
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressFrameHeight:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    iget-object v7, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 255
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressHeight:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-boolean v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_0

    int-to-float v3, v0

    .line 263
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    int-to-float v0, v0

    div-float/2addr v5, v6

    mul-float v0, v0, v5

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    goto :goto_0

    .line 265
    :cond_0
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    mul-int v0, v0, v2

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    sub-int/2addr v2, v4

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v3

    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    sub-float v2, v1, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 268
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 269
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    if-lez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 271
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 274
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 281
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressBackHeight:F

    div-float/2addr v2, v6

    sub-float v2, v1, v2

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbRadius:F

    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 285
    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbRadius:F

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbNormalRadius:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    sub-float/2addr v0, v3

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 288
    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextLocation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 289
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 292
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 293
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 294
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 295
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextBackRadius:F

    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 296
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progressPosition:F

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbPressedRadius:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 317
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isTouchLegal:Z

    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->clamp(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    iget-wide v3, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mLastTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x32

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_0

    .line 335
    :cond_2
    iput-wide v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mLastTime:J

    .line 336
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->invalidate()V

    .line 337
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarChangeListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;

    if-eqz p1, :cond_3

    .line 338
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-interface {p1, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;->onProgress(I)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarProgressListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;

    if-eqz p1, :cond_7

    .line 340
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-interface {p1, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;->onProgress(I)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->invalidate()V

    .line 347
    iget-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->isTouchLegal:Z

    if-eqz p1, :cond_7

    .line 348
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 349
    invoke-direct {p0, v1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 350
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 351
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarChangeListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    .line 352
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-interface {p1, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;->onFinished(I)V

    goto :goto_0

    .line 353
    :cond_5
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarFinishedListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;

    if-eqz p1, :cond_7

    .line 354
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    invoke-interface {p1, v0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;->onFinished(I)V

    goto :goto_0

    .line 321
    :cond_6
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->checkTouchingTarget(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    return v2
.end method

.method public setCenterModeEnable(Z)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 168
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 169
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    .line 173
    :cond_0
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    .line 174
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->invalidate()V

    return-object p0
.end method

.method public setMThumbRadius(F)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbRadius:F

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarChangeListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarChangeListener;

    return-object p0
.end method

.method public setOnSeekBarFinishedListener(Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarFinishedListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;

    return-object p0
.end method

.method public setOnSeekBarProgressListener(Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mOnSeekBarProgressListener:Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarProgressListener;

    return-object p0
.end method

.method public setProgress(I)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mIsCenterState:Z

    if-eqz v0, :cond_1

    .line 180
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    if-gt p1, v0, :cond_0

    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_0

    .line 181
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    goto :goto_0

    .line 183
    :cond_0
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    goto :goto_0

    .line 186
    :cond_1
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->maxProgress:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    if-lt p1, v0, :cond_2

    .line 187
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    goto :goto_0

    .line 189
    :cond_2
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->minProgress:I

    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->invalidate()V

    return-object p0
.end method

.method public setProgressEnable(Z)Lcom/lewis/edit/widgets/EditCenterSeekBarView;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setEnabled(Z)V

    .line 202
    iget p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbColor:I

    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbDrawColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setEnabled(Z)V

    .line 205
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->progress:I

    const p1, -0x777778

    .line 206
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->mThumbDrawColor:I

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->invalidate()V

    return-object p0
.end method
