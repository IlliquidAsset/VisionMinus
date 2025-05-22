.class public Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
.super Landroid/widget/GridView;
.source "GridGroupedsGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$WindowRunnable;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;
    }
.end annotation


# static fields
.field private static final ERROR_PLATFORM:Ljava/lang/String;

.field private static final MATCHED_STICKIED_HEADER:I = -0x2

.field private static final NO_MATCHED_HEADER:I = -0x1

.field static final TAG:Ljava/lang/String;

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FINISHED_LONG_PRESS:I = -0x2

.field protected static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field protected mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mColumnWidth:I

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mHeaderBottomPosition:I

.field mHeaderChildBeingPressed:Z

.field private mHeadersIgnorePadding:Z

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mNumMeasuredColumns:I

.field private mOnHeaderClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

.field private mStickiedHeader:Landroid/view/View;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error supporting platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    const/4 p3, 0x1

    .line 53
    iput-boolean p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    .line 61
    iput-boolean p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    .line 65
    iput p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    .line 73
    new-instance p3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;

    invoke-direct {p3, p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V

    iput-object p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 98
    invoke-virtual {p0, p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 99
    iget-boolean p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumColumnsSet:Z

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    .line 102
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->reset()V

    return-void
.end method

.method static synthetic access$202(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;I)J
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->headerViewPositionToId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)I
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)I
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method private findMotionHeader(F)I
    .locals 7

    .line 483
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 489
    invoke-virtual {p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getItemIdAtPosition(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 491
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 493
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    return v0

    .line 499
    :cond_1
    iget v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v1, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getHeaderHeight()I
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 108
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 110
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v1, v2

    .line 111
    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4

    .line 117
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 118
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 120
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private headerViewPositionToId(I)J
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 515
    iget-wide v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    return-wide v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private measureHeader()V
    .locals 6

    .line 521
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 530
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 529
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 535
    :goto_0
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 536
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_2

    .line 537
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 539
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 541
    :goto_1
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 542
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 541
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 543
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 545
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    .line 549
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 548
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 554
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->swapStickiedHeader(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 556
    iput-wide v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    return-void
.end method

.method private scrollChanged(I)V
    .locals 14

    .line 560
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 572
    :cond_1
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    sub-int v1, p1, v1

    if-gez v1, :cond_2

    move v1, p1

    .line 577
    :cond_2
    iget v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v2, p1

    .line 578
    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    move v2, p1

    .line 582
    :cond_3
    iget v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    if-nez v3, :cond_4

    .line 583
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    :goto_0
    move v3, p1

    goto :goto_2

    :cond_4
    if-gez v3, :cond_6

    .line 585
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    .line 586
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gtz v1, :cond_5

    .line 588
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v3

    move-wide v12, v3

    move v3, v2

    goto :goto_1

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    goto :goto_0

    .line 594
    :cond_6
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_7

    .line 595
    iget v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    if-ge v2, v3, :cond_7

    .line 596
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    move-wide v12, v2

    move v3, v1

    :goto_1
    move-wide v1, v12

    goto :goto_2

    .line 599
    :cond_7
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    goto :goto_0

    .line 603
    :goto_2
    iget-wide v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_8

    .line 604
    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    iget-object v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    .line 605
    invoke-virtual {v4, v3, v5, p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 604
    invoke-direct {p0, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 606
    invoke-direct {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->measureHeader()V

    .line 607
    iput-wide v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    .line 610
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    const v3, 0x1869f

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_c

    .line 617
    invoke-super {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    iget-boolean v6, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz v6, :cond_9

    .line 621
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_4

    .line 623
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    :goto_4
    if-gez v6, :cond_a

    goto :goto_5

    .line 630
    :cond_a
    iget-object v7, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0, v5}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_b

    if-ge v6, v3, :cond_b

    move-object v2, v5

    move v3, v6

    .line 616
    :cond_b
    :goto_5
    iget v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 637
    :cond_c
    invoke-direct {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderHeight()I

    move-result v1

    if-eqz v2, :cond_11

    if-nez p1, :cond_d

    .line 642
    invoke-super {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_d

    iget-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-nez p1, :cond_d

    .line 644
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 646
    :cond_d
    iget-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz p1, :cond_f

    .line 647
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 648
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 647
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    .line 649
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 650
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_6

    :cond_e
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    :goto_6
    iput v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 653
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-gez p1, :cond_10

    goto :goto_7

    :cond_10
    move v1, p1

    .line 654
    :goto_7
    iput v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 659
    :cond_11
    iput v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    .line 660
    iget-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz p1, :cond_12

    .line 661
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    :cond_12
    :goto_8
    return-void
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->detachHeader(Landroid/view/View;)V

    .line 669
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->attachHeader(Landroid/view/View;)V

    .line 670
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-void
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 19

    move/from16 v0, p2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-object p1

    .line 678
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 682
    invoke-static/range {p1 .. p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v7

    .line 683
    invoke-static/range {p1 .. p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v15

    move/from16 p1, v15

    move-object/from16 v15, p0

    .line 692
    invoke-virtual {v15, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_1

    move/from16 v16, v14

    .line 694
    aget-object v14, v8, v15

    move/from16 v17, v13

    iget v13, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v18, v12

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v13, v12

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    move/from16 v13, v17

    move/from16 v12, v18

    goto :goto_0

    :cond_1
    move/from16 v18, v12

    move/from16 v17, v13

    move/from16 v16, v14

    move-wide v0, v1

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v18

    move/from16 v12, v17

    move/from16 v13, v16

    move/from16 v14, p1

    .line 696
    invoke-static/range {v0 .. v14}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 925
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 927
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchAttachedToWindow"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "android.view.View$AttachInfo"

    .line 928
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 927
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 929
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 930
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 933
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 944
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchDetachedFromWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 947
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 950
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 704
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->scrollChanged(I)V

    .line 708
    :cond_0
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eqz v4, :cond_1

    .line 709
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 710
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderHeight()I

    move-result v9

    .line 711
    iget v4, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    sub-int/2addr v4, v9

    if-eqz v1, :cond_3

    .line 715
    iget-boolean v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v5, :cond_3

    .line 716
    iget-boolean v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v5, :cond_2

    .line 717
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 718
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 720
    :cond_2
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 721
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 723
    :goto_1
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 724
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 727
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 731
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 734
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLastVisiblePosition()I

    move-result v10

    if-gt v6, v10, :cond_5

    .line 737
    invoke-virtual {v0, v6}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getItemIdAtPosition(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v12

    if-nez v14, :cond_4

    .line 739
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_4
    iget v10, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v6, v10

    add-int/2addr v7, v10

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 746
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_d

    .line 747
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 750
    :try_start_0
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    move-object v13, v7

    check-cast v13, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    .line 756
    invoke-virtual {v13}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getGroupedId()I

    move-result v13

    int-to-long v13, v13

    iget-wide v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    cmp-long v15, v13, v2

    if-nez v15, :cond_6

    .line 757
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_6

    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 758
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    if-eqz v2, :cond_7

    goto/16 :goto_9

    .line 763
    :cond_7
    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_8

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    .line 766
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 766
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_5
    const/4 v3, 0x0

    .line 770
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 771
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 772
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 771
    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 773
    invoke-virtual {v12, v2, v11}, Landroid/view/View;->measure(II)V

    .line 775
    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_9

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 778
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v11, v13

    .line 779
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 778
    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    .line 782
    :goto_6
    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_a

    .line 783
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 784
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 786
    :cond_a
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 787
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v3, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 790
    :goto_7
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 791
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 793
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 794
    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_b

    .line 795
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    .line 797
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 799
    :goto_8
    invoke-virtual {v12, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_3

    :catch_0
    return-void

    :cond_d
    if-eqz v1, :cond_e

    .line 803
    iget-boolean v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_e

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_e
    if-nez v1, :cond_f

    return-void

    .line 812
    :cond_f
    :goto_a
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_10

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    goto :goto_b

    .line 815
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 817
    :goto_b
    iget-object v2, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 819
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_11

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_c

    .line 822
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 822
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_c
    const/4 v2, 0x0

    .line 825
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 826
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 827
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 826
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 828
    iget-object v5, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 829
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_12

    .line 830
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v5

    iget-object v6, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    .line 832
    :cond_12
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v5

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 832
    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    .line 837
    :goto_d
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_14

    .line 838
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 839
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_e

    .line 841
    :cond_14
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 842
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 844
    :goto_e
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v2, v4, v9

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 845
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz v1, :cond_15

    .line 846
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_f

    .line 848
    :cond_15
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 851
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 852
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 854
    iget-boolean v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_16

    int-to-float v1, v4

    .line 855
    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_10

    .line 857
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v4

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 860
    :goto_10
    iget v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-eq v1, v9, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v1, v1, 0xff

    div-int v6, v1, v9

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 865
    :cond_17
    iget-object v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 867
    iget v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-eq v1, v9, :cond_18

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 870
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-object p1

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 156
    invoke-virtual {v1, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 155
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 162
    invoke-virtual {v1, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 161
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 168
    invoke-virtual {v1, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 167
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 875
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 877
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    if-lez v0, :cond_1

    .line 878
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 879
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 878
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 880
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    div-int v1, v0, v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    :goto_0
    if-eq v1, v2, :cond_0

    .line 885
    iget v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    mul-int v3, v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHorizontalSpacing:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    if-le v3, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 902
    :cond_2
    :goto_1
    iput v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    goto :goto_2

    .line 906
    :cond_3
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    .line 910
    :goto_2
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_4

    .line 911
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->setNumColumns(I)V

    .line 914
    :cond_4
    invoke-direct {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->measureHeader()V

    .line 916
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 178
    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;

    .line 180
    invoke-virtual {p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    iget-boolean p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;->areHeadersSticky:Z

    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    .line 183
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 188
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;

    invoke-direct {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 191
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    iput-boolean v0, v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$SavedState;->areHeadersSticky:Z

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 198
    iget-boolean v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 200
    iget v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v5}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 201
    iget v6, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v6, v2, :cond_0

    move-object v6, v5

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, v6}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eq v0, v4, :cond_1

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    .line 204
    :cond_1
    iput-boolean v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    :cond_2
    if-eqz v5, :cond_3

    .line 207
    iget v7, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v7}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 208
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 209
    new-instance v7, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;

    invoke-direct {v7, p0, v6}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$2;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Landroid/view/View;)V

    .line 214
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    .line 209
    invoke-virtual {v5, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {p0, v3, v5, v7, v8}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    :cond_3
    and-int/lit16 v0, v0, 0xff

    const/4 v5, -0x1

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    .line 251
    :cond_4
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-eq v0, v5, :cond_15

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 255
    iput v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 257
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 259
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    :cond_6
    iput v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    goto/16 :goto_4

    .line 271
    :cond_7
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-ne v0, v2, :cond_8

    .line 272
    iput v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4

    :cond_8
    if-eq v0, v5, :cond_15

    .line 275
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v0, v5, :cond_9

    goto/16 :goto_4

    .line 279
    :cond_9
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_12

    if-eqz p1, :cond_12

    .line 282
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-eqz v0, :cond_a

    .line 283
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 286
    :cond_a
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    if-nez v0, :cond_b

    .line 287
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$1;)V

    iput-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    .line 290
    :cond_b
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    .line 291
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    iput v1, v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 292
    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 294
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-eqz v1, :cond_d

    if-ne v1, v4, :cond_c

    goto :goto_1

    .line 333
    :cond_c
    iget-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez p1, :cond_12

    .line 334
    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->run()V

    goto :goto_3

    .line 295
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 297
    iget v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    goto :goto_2

    :cond_e
    iget-object v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    :cond_f
    iget-boolean v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez v1, :cond_11

    .line 306
    iput v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 307
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 308
    invoke-virtual {p0, v4}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 309
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    .line 310
    invoke-virtual {p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 312
    :cond_10
    new-instance v1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$3;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Landroid/view/View;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;)V

    iput-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 329
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v2, p1

    .line 328
    invoke-virtual {p0, v1, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 331
    :cond_11
    iput v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 338
    :cond_12
    :goto_3
    iput v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4

    .line 221
    :cond_13
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    if-nez v0, :cond_14

    .line 222
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    invoke-direct {v0, p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;)V

    iput-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    .line 224
    :cond_14
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 227
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionY:F

    .line 228
    invoke-direct {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->findMotionHeader(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v0, v5, :cond_16

    .line 341
    :cond_15
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 235
    :cond_16
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 237
    iget v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 238
    iput-boolean v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    .line 239
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 241
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 242
    iget p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-eq p1, v2, :cond_18

    .line 243
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    .line 248
    :cond_19
    iput v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    return v0

    :cond_1
    return v1
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnHeaderLongClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p3, 0x2

    .line 365
    invoke-virtual {p1, p3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 367
    :cond_1
    invoke-virtual {p0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->performHapticFeedback(I)Z

    :cond_2
    return p2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    .line 384
    :cond_1
    instance-of v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    if-eqz v0, :cond_2

    .line 385
    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    goto :goto_1

    .line 386
    :cond_2
    instance-of v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    if-eqz v0, :cond_3

    .line 388
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-direct {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;)V

    goto :goto_0

    .line 392
    :cond_3
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    :goto_0
    move-object p1, v0

    .line 395
    :goto_1
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;)V

    iput-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 396
    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    invoke-direct {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->reset()V

    .line 398
    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 403
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    .line 404
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 411
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    const/4 p1, 0x1

    .line 412
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mClipToPaddingHasBeenSet:Z

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 418
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 432
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 433
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mHorizontalSpacing:I

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 438
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumColumnsSet:Z

    .line 440
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;)V
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 452
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setLongClickable(Z)V

    .line 454
    :cond_0
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnHeaderLongClickListener:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 460
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 467
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 473
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    .line 478
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 479
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    return-void
.end method
