.class public abstract Lcom/powervision/base/views/ScrollPickerView;
.super Landroid/view/View;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;,
        Lcom/powervision/base/views/ScrollPickerView$FlingOnGestureListener;,
        Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final sAutoScrollInterpolator:Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;


# instance fields
.field private mAutoScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCanTap:Z

.field private mCenterItemBackground:Landroid/graphics/drawable/Drawable;

.field private mCenterPoint:I

.field private mCenterPosition:I

.field private mCenterX:I

.field private mCenterY:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDisallowInterceptTouch:Z

.field private mDisallowTouch:Z

.field private mDrawAllItem:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasCallSelectedListener:Z

.field private mIsAutoScrolling:Z

.field private mIsCirculation:Z

.field private mIsFling:Z

.field private mIsHorizontal:Z

.field private mIsInertiaScroll:Z

.field private mIsMovingCenter:Z

.field private mItemHeight:I

.field private mItemSize:I

.field private mItemWidth:I

.field private mLastMoveX:F

.field private mLastMoveY:F

.field private mLastScrollX:I

.field private mLastScrollY:I

.field private mListener:Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;

.field private mMoveLength:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelected:I

.field private mSelectedOnTouch:I

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 495
    new-instance v0, Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;-><init>(Lcom/powervision/base/views/ScrollPickerView$1;)V

    sput-object v0, Lcom/powervision/base/views/ScrollPickerView;->sAutoScrollInterpolator:Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsInertiaScroll:Z

    .line 39
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    const/4 p3, 0x0

    .line 45
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    .line 49
    iput p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    .line 50
    iput p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 68
    iput p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 69
    iput p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 71
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCanTap:Z

    .line 78
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    .line 80
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    .line 82
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mHasCallSelectedListener:Z

    .line 493
    iput-boolean p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 91
    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/powervision/base/views/ScrollPickerView$FlingOnGestureListener;

    invoke-direct {v2, p0, v0}, Lcom/powervision/base/views/ScrollPickerView$FlingOnGestureListener;-><init>(Lcom/powervision/base/views/ScrollPickerView;Lcom/powervision/base/views/ScrollPickerView$1;)V

    invoke-direct {p3, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    new-instance p3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 94
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    .line 96
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mPaint:Landroid/graphics/Paint;

    .line 97
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    invoke-direct {p0, p2}, Lcom/powervision/base/views/ScrollPickerView;->init(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Lcom/powervision/base/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    return p0
.end method

.method static synthetic access$1100(Lcom/powervision/base/views/ScrollPickerView;FF)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/ScrollPickerView;->fling(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/base/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    return p0
.end method

.method static synthetic access$1202(Lcom/powervision/base/views/ScrollPickerView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    return p1
.end method

.method static synthetic access$1300(Lcom/powervision/base/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    return p0
.end method

.method static synthetic access$1400(Lcom/powervision/base/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    return p0
.end method

.method static synthetic access$1500(Lcom/powervision/base/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCanTap:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/powervision/base/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    return p0
.end method

.method static synthetic access$1700()Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;
    .locals 1

    .line 34
    sget-object v0, Lcom/powervision/base/views/ScrollPickerView;->sAutoScrollInterpolator:Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/powervision/base/views/ScrollPickerView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->moveToCenter()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/base/views/ScrollPickerView;IIF)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/base/views/ScrollPickerView;->computeScroll(IIF)V

    return-void
.end method

.method static synthetic access$302(Lcom/powervision/base/views/ScrollPickerView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    return p1
.end method

.method static synthetic access$402(Lcom/powervision/base/views/ScrollPickerView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/base/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/base/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    return p0
.end method

.method static synthetic access$602(Lcom/powervision/base/views/ScrollPickerView;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/base/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/base/views/ScrollPickerView;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    return p1
.end method

.method static synthetic access$800(Lcom/powervision/base/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsInertiaScroll:Z

    return p0
.end method

.method static synthetic access$900(Lcom/powervision/base/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    return p0
.end method

.method private checkCirculation()V
    .locals 6

    .line 360
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    int-to-float v2, v1

    div-float v2, v0, v2

    float-to-int v2, v2

    .line 363
    iget v5, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    if-gez v5, :cond_3

    .line 365
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    if-ltz v0, :cond_0

    .line 369
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto/16 :goto_0

    .line 371
    :cond_1
    iput v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    int-to-float v0, v1

    .line 372
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 373
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 376
    :cond_2
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_9

    .line 377
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    invoke-direct {p0, v0, v4}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_3
    int-to-float v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    .line 381
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_9

    neg-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 387
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    .line 388
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 389
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v0, :cond_6

    .line 391
    :cond_5
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    .line 392
    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 393
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    .line 396
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 397
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 400
    :cond_7
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_9

    .line 401
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    invoke-direct {p0, v0, v4}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 405
    :cond_8
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    :cond_9
    :goto_0
    return-void
.end method

.method private computeScroll(IIF)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_1

    .line 285
    iget-boolean p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p2, :cond_0

    .line 287
    iget p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    int-to-float p3, p1

    add-float/2addr p2, p3

    iget p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 288
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    goto :goto_0

    .line 291
    :cond_0
    iget p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    int-to-float p3, p1

    add-float/2addr p2, p3

    iget p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 292
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->checkCirculation()V

    .line 295
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 297
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 298
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 299
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 302
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_3

    .line 303
    iget p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 304
    iput p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_2
    int-to-float p1, p3

    .line 306
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_3
    neg-float p1, p1

    .line 309
    iget p3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 310
    iput p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_4
    neg-int p1, p3

    int-to-float p1, p1

    .line 312
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 315
    :goto_1
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->checkCirculation()V

    .line 316
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->notifySelected()V

    .line 317
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    :goto_2
    return-void
.end method

.method private fling(FF)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 468
    iget-boolean v3, v0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    float-to-int v6, v1

    .line 469
    iput v6, v0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 470
    iput-boolean v4, v0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    .line 472
    iget-object v5, v0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    float-to-int v8, v2

    const/4 v9, 0x0

    iget v1, v0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    mul-int/lit8 v10, v1, -0xa

    mul-int/lit8 v11, v1, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_0
    float-to-int v1, v1

    .line 475
    iput v1, v0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 476
    iput-boolean v4, v0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    .line 478
    iget-object v14, v0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v15, 0x0

    const/16 v17, 0x0

    float-to-int v2, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v3, v0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    mul-int/lit8 v21, v3, -0xa

    mul-int/lit8 v22, v3, 0xa

    move/from16 v16, v1

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v22}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 481
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/R$styleable;->ScrollPickerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 108
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_center_item_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_center_item_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->setCenterItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_visible_item_count:I

    .line 113
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getVisibleItemCount()I

    move-result v1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->setVisibleItemCount(I)V

    .line 114
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_center_item_position:I

    .line 116
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getCenterPosition()I

    move-result v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->setCenterPosition(I)V

    .line 117
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_is_circulation:I

    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->isIsCirculation()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->setIsCirculation(Z)V

    .line 118
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_disallow_intercept_touch:I

    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->isDisallowInterceptTouch()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->setDisallowInterceptTouch(Z)V

    .line 119
    sget v0, Lcom/powervision/base/R$styleable;->ScrollPickerView_spv_orientation:I

    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/powervision/base/views/ScrollPickerView;->setHorizontal(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method private moveToCenter()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->cancelScroll()V

    .line 419
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    const/4 v2, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 420
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v1, :cond_2

    .line 421
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 422
    invoke-direct {p0, v0, v2}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 427
    :cond_2
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 428
    invoke-direct {p0, v0, v2}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 434
    :cond_4
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v1, :cond_6

    neg-float v1, v0

    .line 435
    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 436
    invoke-direct {p0, v0, v2}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_5
    neg-int v1, v3

    .line 438
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_6
    neg-float v1, v0

    .line 441
    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7

    .line 442
    invoke-direct {p0, v0, v2}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_7
    neg-int v1, v3

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/ScrollPickerView;->scroll(FI)V

    :cond_8
    :goto_0
    return-void
.end method

.method private notifySelected()V
    .locals 2

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 486
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->cancelScroll()V

    .line 487
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mListener:Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 489
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    invoke-interface {v0, p0, v1}, Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;->onSelected(Lcom/powervision/base/views/ScrollPickerView;I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 5

    .line 196
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    if-gez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    .line 202
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    .line 204
    iput v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    .line 205
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    mul-int v1, v1, v0

    iput v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    .line 207
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    .line 208
    iput v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    .line 211
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    .line 213
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    mul-int v0, v0, v2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    .line 214
    iput v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    .line 216
    iput v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    .line 217
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 221
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private scroll(FI)V
    .locals 3

    .line 452
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-int p1, p1

    .line 453
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 454
    iput-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 455
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 456
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    .line 458
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 459
    iput-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 460
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 461
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 463
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public autoScrollFast(IJ)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 556
    invoke-virtual {p0, v0}, Lcom/powervision/base/views/ScrollPickerView;->dip2px(F)I

    move-result v0

    int-to-float v5, v0

    .line 557
    sget-object v6, Lcom/powervision/base/views/ScrollPickerView;->sAutoScrollInterpolator:Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/powervision/base/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public autoScrollFast(IJF)V
    .locals 6

    .line 566
    sget-object v5, Lcom/powervision/base/views/ScrollPickerView;->sAutoScrollInterpolator:Lcom/powervision/base/views/ScrollPickerView$SlotInterpolator;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/powervision/base/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public autoScrollFast(IJFLandroid/view/animation/Interpolator;)V
    .locals 5

    .line 505
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->cancelScroll()V

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    long-to-float v1, p2

    mul-float p4, p4, v1

    float-to-int p4, p4

    int-to-float v1, p4

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 513
    iget-object v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v1, v1, v3

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v1, v1, v3

    iget v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v4, p1

    mul-int v4, v4, v3

    add-int/2addr v1, v4

    .line 517
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int p1, p1, v3

    add-int/2addr p1, v1

    sub-int v3, p4, v1

    .line 519
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge v3, p4, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 521
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 522
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 p4, 0x2

    new-array p4, p4, [I

    const/4 v3, 0x0

    aput v3, p4, v3

    aput v1, p4, v0

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 523
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 524
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 525
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    if-eqz v1, :cond_3

    .line 527
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/powervision/base/views/ScrollPickerView$1;

    invoke-direct {p2, p0, v1}, Lcom/powervision/base/views/ScrollPickerView$1;-><init>(Lcom/powervision/base/views/ScrollPickerView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 535
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 536
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/powervision/base/views/ScrollPickerView$2;

    invoke-direct {p2, p0}, Lcom/powervision/base/views/ScrollPickerView$2;-><init>(Lcom/powervision/base/views/ScrollPickerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 545
    :cond_3
    invoke-direct {p0, v1, v1, v2}, Lcom/powervision/base/views/ScrollPickerView;->computeScroll(IIF)V

    .line 546
    iput-boolean v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V
    .locals 4

    .line 589
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v1, 0x1

    xor-int/2addr p5, v1

    .line 593
    iput-boolean p5, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    .line 594
    iput-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 595
    iget-object p5, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 596
    iget-object p5, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    aput p1, v2, v1

    invoke-virtual {p5, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 597
    iget-object p5, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    iget-object p4, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    iget-object p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 600
    iget-object p2, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/powervision/base/views/ScrollPickerView$3;

    invoke-direct {p3, p0, p1}, Lcom/powervision/base/views/ScrollPickerView$3;-><init>(Lcom/powervision/base/views/ScrollPickerView;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 609
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/powervision/base/views/ScrollPickerView$4;

    invoke-direct {p2, p0, v0}, Lcom/powervision/base/views/ScrollPickerView$4;-><init>(Lcom/powervision/base/views/ScrollPickerView;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public autoScrollToPosition(IJLandroid/view/animation/Interpolator;)V
    .locals 7

    .line 577
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 578
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    mul-int v2, v0, p1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 579
    invoke-virtual/range {v1 .. v6}, Lcom/powervision/base/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public cancelScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 352
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 353
    iput-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    iput-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    .line 354
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 355
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->stopAutoScroll()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 327
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    .line 330
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollY:I

    .line 333
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastScrollX:I

    .line 334
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->checkCirculation()V

    .line 335
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    goto :goto_1

    .line 337
    :cond_1
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    .line 339
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->notifySelected()V

    goto :goto_1

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->moveToCenter()V

    goto :goto_1

    .line 344
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->notifySelected()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dip2px(F)I
    .locals 1

    .line 957
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 958
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public abstract drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "TT;>;IIFF)V"
        }
    .end annotation
.end method

.method public getCenterItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCenterPoint()I
    .locals 1

    .line 818
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    return v0
.end method

.method public getCenterPosition()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 811
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemHeight()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    return v0
.end method

.method public getItemSize()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    return v0
.end method

.method public getListener()Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mListener:Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 725
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    return v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    return v0
.end method

.method public isAutoScrolling()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    return v0
.end method

.method public isCanTap()Z
    .locals 1

    .line 893
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCanTap:Z

    return v0
.end method

.method public isDisallowInterceptTouch()Z
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return v0
.end method

.method public isDisallowTouch()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    return v0
.end method

.method public isDrawAllItem()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    return v0
.end method

.method public isFling()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    return v0
.end method

.method public isInertiaScroll()Z
    .locals 1

    .line 749
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsInertiaScroll:Z

    return v0
.end method

.method public isIsCirculation()Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    return v0
.end method

.method public isMovingCenter()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 877
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsFling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsMovingCenter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 128
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    if-eqz v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    .line 147
    iget-boolean v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_6

    .line 148
    :cond_3
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    sub-int v2, v1, v0

    if-gez v2, :cond_4

    iget-object v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v2

    :cond_4
    sub-int/2addr v1, v0

    move v5, v1

    .line 151
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v1, :cond_5

    .line 152
    iget-object v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    neg-int v6, v0

    iget v7, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    sub-float v8, v1, v2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/powervision/base/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    goto :goto_1

    .line 153
    :cond_5
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_6

    .line 154
    iget-object v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    neg-int v6, v0

    iget v7, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    sub-float v8, v1, v2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/powervision/base/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    .line 157
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    .line 158
    :cond_7
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    :goto_2
    move v4, v1

    .line 161
    iget-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v1, :cond_9

    .line 162
    iget-object v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v6, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    add-float v7, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/powervision/base/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    goto :goto_3

    .line 163
    :cond_9
    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 164
    iget-object v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v6, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    add-float v7, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/powervision/base/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 169
    :cond_b
    iget-object v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v4, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v0, v0

    add-float v7, v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/powervision/base/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    :cond_c
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 192
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 230
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelectedOnTouch:I

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    .line 247
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    const v2, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_5

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    return v1

    .line 251
    :cond_4
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    .line 253
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    return v1

    .line 256
    :cond_6
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    .line 258
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    .line 260
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->checkCirculation()V

    .line 261
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    goto :goto_2

    .line 264
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveY:F

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mLastMoveX:F

    .line 266
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mMoveLength:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    .line 267
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelectedOnTouch:I

    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    if-eq p1, v0, :cond_9

    .line 268
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->notifySelected()V

    goto :goto_2

    .line 271
    :cond_8
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->moveToCenter()V

    :cond_9
    :goto_2
    return v1
.end method

.method public setCanTap(Z)V
    .locals 0

    .line 902
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCanTap:Z

    return-void
.end method

.method public setCenterItemBackground(I)V
    .locals 4

    .line 867
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 868
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 869
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setCenterItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 861
    iput-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 862
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterX:I

    iget v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    iget v2, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 863
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setCenterPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 841
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    goto :goto_0

    .line 842
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 843
    iput v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    goto :goto_0

    .line 845
    :cond_1
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    .line 847
    :goto_0
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterPosition:I

    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mCenterY:I

    .line 848
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 711
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    goto :goto_0

    .line 713
    :cond_0
    iput-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    .line 715
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    .line 716
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setDisallowInterceptTouch(Z)V
    .locals 0

    .line 782
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return-void
.end method

.method public setDisallowTouch(Z)V
    .locals 0

    .line 831
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDisallowTouch:Z

    return-void
.end method

.method public setDrawAllItem(Z)V
    .locals 0

    .line 946
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mDrawAllItem:Z

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 917
    :cond_0
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    .line 918
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->reset()V

    .line 919
    iget-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p1, :cond_1

    .line 920
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    goto :goto_0

    .line 922
    :cond_1
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setInertiaScroll(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsInertiaScroll:Z

    return-void
.end method

.method public setIsCirculation(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsCirculation:Z

    return-void
.end method

.method public setOnSelectedListener(Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mListener:Lcom/powervision/base/views/ScrollPickerView$OnSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mHasCallSelectedListener:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    iput-boolean v1, p0, Lcom/powervision/base/views/ScrollPickerView;->mHasCallSelectedListener:Z

    .line 735
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mSelected:I

    .line 736
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    .line 737
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->notifySelected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 2

    .line 928
    iget-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    xor-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 931
    iput-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    .line 932
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->reset()V

    .line 933
    iget-boolean p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p1, :cond_1

    .line 934
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemWidth:I

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    goto :goto_0

    .line 936
    :cond_1
    iget p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemHeight:I

    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mItemSize:I

    .line 938
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 964
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->moveToCenter()V

    :cond_0
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 773
    iput p1, p0, Lcom/powervision/base/views/ScrollPickerView;->mVisibleItemCount:I

    .line 774
    invoke-direct {p0}, Lcom/powervision/base/views/ScrollPickerView;->reset()V

    .line 775
    invoke-virtual {p0}, Lcom/powervision/base/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 626
    iget-object v0, p0, Lcom/powervision/base/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
