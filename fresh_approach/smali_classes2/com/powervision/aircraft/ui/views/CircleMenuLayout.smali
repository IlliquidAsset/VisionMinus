.class public Lcom/powervision/aircraft/ui/views/CircleMenuLayout;
.super Landroid/view/ViewGroup;
.source "CircleMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FLINGABLE_VALUE:I = 0x12c

.field private static final NOCLICK_VALUE:I = 0x3

.field private static final RADIO_DEFAULT_CHILD_DIMENSION:F = 0.125f

.field private static final RADIO_PADDING_LAYOUT:F = 0.011111111f


# instance fields
.field private bGPaint:Landroid/graphics/Paint;

.field private circleLineColor:I

.field private circleType:I

.field curPosition:I

.field gimbalValue:I

.field halfItemWidth:I

.field private isAlignment:Z

.field isSingleMode:Z

.field private isTouchClickEnable:Z

.field private mFlingableValue:I

.field private mItemAngleDelay:F

.field private mItemTexts:[Ljava/lang/String;

.field private mLastX:F

.field private mLastY:F

.field private mMenuItemCount:I

.field private mOnMenuItemClickListener:Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

.field private mPadding:F

.field private mRadius:I

.field private mStartAngle:D

.field private mTmpAngle:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mViewHeight:I

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewWidth:I

.field private paint:Landroid/graphics/Paint;

.field private pathIn:Landroid/graphics/Path;

.field private pathSingle:Landroid/graphics/Path;

.field private triangBgColor:I

.field private triangleHeight:I

.field private triangleLong:I

.field private trianglePaint:Landroid/graphics/Paint;

.field value:I

.field private viewBgColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x12c

    .line 47
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mFlingableValue:I

    const-wide v0, 0x4066800000000000L    # 180.0

    .line 51
    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    const/16 v0, 0xa

    .line 72
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleHeight:I

    const/16 v0, 0x10

    .line 73
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleLong:I

    .line 101
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    .line 108
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    .line 109
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 486
    iput p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->value:I

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    invoke-virtual {p0, p3, p3, p3, p3}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setPadding(IIII)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setWillNotDraw(Z)V

    .line 124
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->initPaints()V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;D)D
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)[Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->circleType:I

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mOnMenuItemClickListener:Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isTouchClickEnable:Z

    return p0
.end method

.method private addMenuItems(I)V
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mMenuItemCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewList:Ljava/util/List;

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->removeAllViews()V

    .line 445
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 446
    :goto_1
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mMenuItemCount:I

    if-ge v2, v3, :cond_2

    .line 448
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 449
    sget v4, Lcom/powervision/aircraft/R$id;->circle_layout_item_tv:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 451
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v5, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;

    invoke-direct {v5, p0, v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$3;-><init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :cond_1
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 466
    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    .line 467
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->requestLayout()V

    return-void
.end method

.method private autoScroll(F)V
    .locals 7

    float-to-double v0, p1

    .line 294
    iget-wide v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_1

    .line 298
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->cancleAnimation()V

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    new-array v4, v3, [I

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 303
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-wide v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    double-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x1

    aput p1, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 304
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x5

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 305
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;-><init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$2;-><init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private autoStartAngle()F
    .locals 4

    .line 358
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    mul-float v0, v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private drawLineTriangle(Landroid/graphics/Canvas;)V
    .locals 5

    .line 167
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    if-eqz v0, :cond_0

    .line 169
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleLong:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathSingle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->trianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleLong:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->pathIn:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->trianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getAngle(FF)F
    .locals 6

    float-to-double v0, p1

    .line 406
    iget p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewHeight:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    float-to-double v2, p2

    int-to-double p1, p1

    div-double/2addr p1, v4

    sub-double/2addr v2, p1

    .line 408
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method private getDefaultWidth()I
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 480
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 482
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 483
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getQuadrant(FF)I
    .locals 2

    .line 412
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewHeight:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x2

    .line 413
    div-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    if-ltz p2, :cond_2

    const/4 v1, 0x3

    :cond_2
    return v1
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 129
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_children_auto_alignment:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    .line 131
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_triangle_bg_color:I

    .line 132
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 131
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangBgColor:I

    .line 133
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_circle_line_color:I

    .line 134
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_circle_line_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 133
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->circleLineColor:I

    .line 135
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_circle_view_bg_color:I

    .line 136
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_circle_circle_view_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 135
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->viewBgColor:I

    .line 137
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_circle_view_single_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    .line 140
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftCircleMenuLayout_aircraft_circle_view_click_touch_enable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isTouchClickEnable:Z

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaints()V
    .locals 4

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->circleLineColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    .line 154
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->viewBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->bGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->trianglePaint:Landroid/graphics/Paint;

    .line 160
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->trianglePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->triangBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->trianglePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public cancleAnimation()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 254
    iget-boolean v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isTouchClickEnable:Z

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_2

    .line 267
    :cond_1
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastX:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastY:F

    invoke-direct {p0, v2, v4}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getAngle(FF)F

    move-result v2

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getAngle(FF)F

    move-result v4

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getQuadrant(FF)I

    move-result v5

    if-eq v5, v3, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getQuadrant(FF)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    sub-float/2addr v2, v4

    float-to-double v3, v2

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    .line 274
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    goto :goto_1

    .line 270
    :cond_3
    :goto_0
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    sub-float/2addr v4, v2

    float-to-double v2, v4

    add-double/2addr v5, v2

    iput-wide v5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    .line 271
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    .line 276
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->requestLayout()V

    .line 277
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastX:F

    .line 278
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastY:F

    goto :goto_2

    .line 281
    :cond_4
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    if-eqz v0, :cond_5

    .line 282
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoStartAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V

    .line 284
    :cond_5
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    return v3

    .line 259
    :cond_6
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastX:F

    .line 260
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mLastY:F

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mTmpAngle:F

    .line 262
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 289
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doAutoScrollTo(I)V
    .locals 4

    .line 493
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 494
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->gimbalValue:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x6e

    if-le p1, v0, :cond_1

    const/16 p1, 0x6e

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 502
    :cond_2
    :goto_0
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->gimbalValue:I

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    const/4 v2, 0x0

    cmpg-float v3, p1, v1

    if-gez v3, :cond_3

    cmpl-float v3, p1, v0

    if-lez v3, :cond_3

    :goto_1
    sub-float v0, v1, p1

    goto :goto_2

    :cond_3
    cmpl-float v3, p1, v2

    if-nez v3, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    cmpg-float v2, p1, v0

    if-gez v2, :cond_5

    if-lez v3, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float p1, p1, v0

    .line 518
    :goto_2
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V

    return-void
.end method

.method public getCurPosition()I
    .locals 5

    .line 402
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildCount()I

    move-result v0

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    const-wide v3, 0x4066800000000000L    # 180.0

    sub-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method public getDelayAngle(I)V
    .locals 4

    .line 371
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getCurPosition()I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 374
    array-length v1, v1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sub-int/2addr p1, v0

    if-lez p1, :cond_3

    if-ge p1, v2, :cond_2

    neg-int v0, p1

    int-to-float v0, v0

    .line 383
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    goto :goto_0

    .line 388
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 389
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    goto :goto_0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, p1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    :goto_0
    mul-float v0, v0, v1

    .line 394
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoStartAngle()F

    move-result v1

    add-float/2addr v1, v0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   getDelayAngle=  i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  end="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  autoStartAngle"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoStartAngle()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "view_mir"

    .line 395
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V

    return-void
.end method

.method public getIsAlignment()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    return v0
.end method

.method public isSingleMode()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 246
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->drawLineTriangle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 220
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildCount()I

    move-result p1

    .line 222
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    int-to-float p2, p2

    const/high16 p3, 0x3e000000    # 0.125f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 223
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildCount()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x43b40000    # 360.0f

    div-float/2addr p4, p3

    iput p4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    .line 225
    invoke-virtual {p0, p4}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 226
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    .line 232
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    if-eqz v0, :cond_1

    .line 233
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 235
    :goto_1
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 236
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    int-to-float v5, p2

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 237
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget-wide v6, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-float v1, v1

    sub-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr v3, v1

    add-int v1, v0, p2

    add-int v2, v3, p2

    .line 239
    invoke-virtual {p5, v0, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 240
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    iget p5, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    float-to-double v2, p5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mStartAngle:D

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->setMeasuredDimension(II)V

    .line 199
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewHeight:I

    .line 201
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mRadius:I

    .line 203
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildCount()I

    move-result p1

    .line 204
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mViewHeight:I

    int-to-float p2, p2

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 205
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->halfItemWidth:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 209
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 213
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 214
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public scrollToNext(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoStartAngle()F

    move-result p1

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    add-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoStartAngle()F

    move-result p1

    iget v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemAngleDelay:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V

    :goto_0
    return-void
.end method

.method public setAlignment(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isAlignment:Z

    return-void
.end method

.method public setFlingableValue(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mFlingableValue:I

    return-void
.end method

.method public setMenuItemIconsAndTexts([Ljava/lang/String;IZI)V
    .locals 0

    .line 427
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    .line 428
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mItemTexts:[Ljava/lang/String;

    .line 429
    iput p4, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->circleType:I

    if-eqz p1, :cond_0

    .line 433
    array-length p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mMenuItemCount:I

    .line 434
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->addMenuItems(I)V

    return-void

    .line 431
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error...CircleMenuLayout data is null,check the text data !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnMenuItemClickListener(Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mOnMenuItemClickListener:Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    .line 475
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->mPadding:F

    return-void
.end method

.method public setSingleMode(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->isSingleMode:Z

    return-void
.end method
