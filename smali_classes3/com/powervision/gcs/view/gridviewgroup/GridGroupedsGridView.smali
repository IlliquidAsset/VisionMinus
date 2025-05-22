.class public Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.super Landroid/widget/GridView;
.source "GridGroupedsGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;,
        Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;
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
.field protected mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

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

.field private mOnHeaderClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

.field private mStickiedHeader:Landroid/view/View;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->TAG:Ljava/lang/String;

    .line 39
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

    sput-object v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    const/4 p3, 0x1

    .line 51
    iput-boolean p3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    .line 59
    iput-boolean p3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    .line 63
    iput p3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    .line 71
    new-instance p3, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    iput-object p3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 96
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 97
    iget-boolean p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumColumnsSet:Z

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 98
    iput p2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->reset()V

    return-void
.end method

.method static synthetic access$202(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;I)J
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->headerViewPositionToId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)I
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)I
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method private findMotionHeader(F)I
    .locals 7

    .line 480
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 486
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getItemIdAtPosition(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 488
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 491
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    return v0

    .line 496
    :cond_1
    iget v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v1, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getHeaderHeight()I
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 106
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 108
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v1, v2

    .line 109
    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4

    .line 115
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 116
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
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

    .line 512
    iget-wide v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    return-wide v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private measureHeader()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 527
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 526
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 533
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_2

    .line 534
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 536
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 538
    :goto_1
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 539
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 541
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    .line 545
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 544
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    const/4 v0, 0x0

    .line 551
    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->swapStickiedHeader(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 552
    iput-wide v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    return-void
.end method

.method private scrollChanged(I)V
    .locals 14

    .line 556
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 568
    :cond_1
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    sub-int v1, p1, v1

    if-gez v1, :cond_2

    move v1, p1

    .line 573
    :cond_2
    iget v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v2, p1

    .line 574
    iget-object v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    move v2, p1

    .line 578
    :cond_3
    iget v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    if-nez v3, :cond_4

    .line 579
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    :goto_0
    move v3, p1

    goto :goto_2

    :cond_4
    if-gez v3, :cond_6

    .line 581
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    .line 582
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gtz v1, :cond_5

    .line 584
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v3

    move-wide v12, v3

    move v3, v2

    goto :goto_1

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    goto :goto_0

    .line 590
    :cond_6
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_7

    .line 591
    iget v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    if-ge v2, v3, :cond_7

    .line 592
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    move-wide v12, v2

    move v3, v1

    :goto_1
    move-wide v1, v12

    goto :goto_2

    .line 595
    :cond_7
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v1

    goto :goto_0

    .line 599
    :goto_2
    iget-wide v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_8

    .line 600
    iget-object v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    iget-object v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    .line 601
    invoke-virtual {v4, v3, v5, p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 600
    invoke-direct {p0, v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 602
    invoke-direct {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->measureHeader()V

    .line 603
    iput-wide v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    .line 606
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    const v3, 0x1869f

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_c

    .line 613
    invoke-super {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 616
    iget-boolean v6, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz v6, :cond_9

    .line 617
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_4

    .line 619
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    :goto_4
    if-gez v6, :cond_a

    goto :goto_5

    .line 626
    :cond_a
    iget-object v7, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_b

    if-ge v6, v3, :cond_b

    move-object v2, v5

    move v3, v6

    .line 612
    :cond_b
    :goto_5
    iget v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 633
    :cond_c
    invoke-direct {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderHeight()I

    move-result v1

    if-eqz v2, :cond_11

    if-nez p1, :cond_d

    .line 638
    invoke-super {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_d

    iget-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-nez p1, :cond_d

    .line 640
    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 642
    :cond_d
    iget-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz p1, :cond_f

    .line 643
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 644
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 643
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    .line 645
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 646
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_6

    :cond_e
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    :goto_6
    iput v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 649
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-gez p1, :cond_10

    goto :goto_7

    :cond_10
    move v1, p1

    .line 650
    :goto_7
    iput v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 655
    :cond_11
    iput v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    .line 656
    iget-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz p1, :cond_12

    .line 657
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    :cond_12
    :goto_8
    return-void
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->detachHeader(Landroid/view/View;)V

    .line 665
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->attachHeader(Landroid/view/View;)V

    .line 666
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-void
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 19

    move/from16 v0, p2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-object p1

    .line 674
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v7

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v15

    move/from16 p1, v15

    move-object/from16 v15, p0

    .line 688
    invoke-virtual {v15, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_1

    move/from16 v16, v14

    .line 690
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

    .line 692
    invoke-static/range {v0 .. v14}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 918
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 920
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchAttachedToWindow"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "android.view.View$AttachInfo"

    .line 921
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 920
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 922
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 923
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

    return-void

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

    .line 925
    :goto_0
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Ljava/lang/Exception;)V

    throw v0
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 935
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchDetachedFromWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 937
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    .line 939
    :goto_0
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$RuntimePlatformSupportException;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 700
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->scrollChanged(I)V

    .line 704
    :cond_0
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eqz v4, :cond_1

    .line 705
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 706
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderHeight()I

    move-result v9

    .line 707
    iget v4, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    sub-int/2addr v4, v9

    if-eqz v1, :cond_3

    .line 711
    iget-boolean v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v5, :cond_3

    .line 712
    iget-boolean v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v5, :cond_2

    .line 713
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 716
    :cond_2
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 717
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 719
    :goto_1
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 720
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 723
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 727
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 730
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getFirstVisiblePosition()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLastVisiblePosition()I

    move-result v10

    if-gt v6, v10, :cond_5

    .line 733
    invoke-virtual {v0, v6}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getItemIdAtPosition(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v12

    if-nez v14, :cond_4

    .line 735
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_4
    iget v10, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    add-int/2addr v6, v10

    add-int/2addr v7, v10

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 742
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_d

    .line 743
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 746
    :try_start_0
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    move-object v13, v7

    check-cast v13, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    invoke-virtual {v13}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getGroupedId()I

    move-result v13

    int-to-long v13, v13

    iget-wide v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mCurrentHeaderId:J

    cmp-long v15, v13, v2

    if-nez v15, :cond_6

    .line 752
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_6

    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 753
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    if-eqz v2, :cond_7

    goto/16 :goto_9

    .line 758
    :cond_7
    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_8

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    .line 761
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 761
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_5
    const/4 v3, 0x0

    .line 765
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 766
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 767
    invoke-virtual {v12, v2, v11}, Landroid/view/View;->measure(II)V

    .line 769
    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_9

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 772
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v11, v13

    .line 773
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 772
    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    .line 776
    :goto_6
    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_a

    .line 777
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 778
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 780
    :cond_a
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 781
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v3, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 784
    :goto_7
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 785
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 787
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 788
    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_b

    .line 789
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    .line 791
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 793
    :goto_8
    invoke-virtual {v12, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 794
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

    .line 797
    iget-boolean v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_e

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_e
    if-nez v1, :cond_f

    return-void

    .line 806
    :cond_f
    :goto_a
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_10

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    goto :goto_b

    .line 809
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 811
    :goto_b
    iget-object v2, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 813
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_11

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_c

    .line 816
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 816
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_c
    const/4 v2, 0x0

    .line 819
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 820
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 821
    iget-object v5, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 822
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_12

    .line 823
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v5

    iget-object v6, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    .line 825
    :cond_12
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getRight()I

    move-result v5

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 825
    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    .line 830
    :goto_d
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_14

    .line 831
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 832
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_e

    .line 834
    :cond_14
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 835
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 837
    :goto_e
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v2, v4, v9

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 838
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    if-eqz v1, :cond_15

    .line 839
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_f

    .line 841
    :cond_15
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 844
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 845
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 847
    iget-boolean v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    if-eqz v1, :cond_16

    int-to-float v1, v4

    .line 848
    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_10

    .line 850
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v4

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 853
    :goto_10
    iget v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-eq v1, v9, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 854
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v1, v1, 0xff

    div-int v6, v1, v9

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 858
    :cond_17
    iget-object v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 860
    iget v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderBottomPosition:I

    if-eq v1, v9, :cond_18

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 863
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-object p1

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

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

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

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

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 154
    invoke-virtual {v1, p3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 153
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

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 160
    invoke-virtual {v1, p3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 159
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

    .line 165
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 166
    invoke-virtual {v1, p3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p3

    iget v3, p3, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 165
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 868
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 870
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    if-lez v0, :cond_1

    .line 871
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 872
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 871
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 873
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    div-int v1, v0, v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    :goto_0
    if-eq v1, v2, :cond_0

    .line 878
    iget v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    mul-int v3, v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHorizontalSpacing:I

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

    .line 895
    :cond_2
    :goto_1
    iput v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    goto :goto_2

    .line 899
    :cond_3
    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    .line 903
    :goto_2
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_4

    .line 904
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumMeasuredColumns:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->setNumColumns(I)V

    .line 907
    :cond_4
    invoke-direct {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->measureHeader()V

    .line 909
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

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 176
    check-cast p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;

    .line 178
    invoke-virtual {p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 179
    iget-boolean p1, p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;->areHeadersSticky:Z

    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    .line 181
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 186
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;

    invoke-direct {v1, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 189
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    iput-boolean v0, v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$SavedState;->areHeadersSticky:Z

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 196
    iget-boolean v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 198
    iget v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v5}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 199
    iget v6, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v6, v2, :cond_0

    move-object v6, v5

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, v6}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eq v0, v4, :cond_1

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    .line 202
    :cond_1
    iput-boolean v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    :cond_2
    if-eqz v5, :cond_3

    .line 205
    iget v7, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v7}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 207
    new-instance v7, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$2;

    invoke-direct {v7, p0, v6}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$2;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Landroid/view/View;)V

    .line 211
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    .line 207
    invoke-virtual {v5, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {p0, v3, v5, v7, v8}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    :cond_3
    and-int/lit16 v0, v0, 0xff

    const/4 v5, -0x1

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    .line 248
    :cond_4
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-eq v0, v5, :cond_15

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 252
    iput v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 254
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 261
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    :cond_6
    iput v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    goto/16 :goto_4

    .line 268
    :cond_7
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-ne v0, v2, :cond_8

    .line 269
    iput v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4

    :cond_8
    if-eq v0, v5, :cond_15

    .line 272
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v0, v5, :cond_9

    goto/16 :goto_4

    .line 276
    :cond_9
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_12

    if-eqz p1, :cond_12

    .line 279
    iget v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-eqz v0, :cond_a

    .line 280
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    if-nez v0, :cond_b

    .line 284
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPerformHeaderClick:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;

    .line 288
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    iput v1, v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 289
    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 291
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-eqz v1, :cond_d

    if-ne v1, v4, :cond_c

    goto :goto_1

    .line 330
    :cond_c
    iget-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez p1, :cond_12

    .line 331
    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;->run()V

    goto :goto_3

    .line 292
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 294
    iget v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    goto :goto_2

    :cond_e
    iget-object v2, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForLongPress:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderLongPress;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    :cond_f
    iget-boolean v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataChanged:Z

    if-nez v1, :cond_11

    .line 303
    iput v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 304
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 305
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setPressed(Z)V

    .line 306
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    .line 307
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    :cond_10
    new-instance v1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$3;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Landroid/view/View;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$PerformHeaderClick;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 326
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v2, p1

    .line 325
    invoke-virtual {p0, v1, v2, v3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 328
    :cond_11
    iput v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    .line 335
    :cond_12
    :goto_3
    iput v5, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4

    .line 218
    :cond_13
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    if-nez v0, :cond_14

    .line 219
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    .line 221
    :cond_14
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mPendingCheckForTap:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 224
    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionY:F

    .line 225
    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->findMotionHeader(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-ne v0, v5, :cond_16

    .line 338
    :cond_15
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 232
    :cond_16
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 234
    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 235
    iput-boolean v4, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeaderChildBeingPressed:Z

    .line 236
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 238
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    iget p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMotionHeaderPosition:I

    if-eq p1, v2, :cond_18

    .line 240
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->invalidate(IIII)V

    .line 245
    :cond_19
    iput v3, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mTouchMode:I

    return v4
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    return v0

    :cond_1
    return v1
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnHeaderLongClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p3, 0x2

    .line 362
    invoke-virtual {p1, p3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 364
    :cond_1
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->performHapticFeedback(I)Z

    :cond_2
    return p2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    .line 381
    :cond_1
    instance-of v0, p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapter;

    if-eqz v0, :cond_2

    .line 382
    check-cast p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapter;

    goto :goto_1

    .line 383
    :cond_2
    instance-of v0, p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;

    if-eqz v0, :cond_3

    .line 385
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    check-cast p1, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;)V

    goto :goto_0

    .line 389
    :cond_3
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    :goto_0
    move-object p1, v0

    .line 392
    :goto_1
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    .line 393
    iget-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 394
    invoke-direct {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->reset()V

    .line 395
    iget-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 400
    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAreHeadersSticky:Z

    .line 401
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 407
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 408
    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClippingToPadding:Z

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mClipToPaddingHasBeenSet:Z

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 414
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 415
    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mColumnWidth:I

    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHeadersIgnorePadding:Z

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 429
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 430
    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mHorizontalSpacing:I

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 435
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumColumnsSet:Z

    .line 437
    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mNumColumns:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mAdapter:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapterWrapper;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnHeaderClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderClickListener;

    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;)V
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->setLongClickable(Z)V

    .line 451
    :cond_0
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnHeaderLongClickListener:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$OnHeaderLongClickListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 457
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 464
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 470
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mMaskStickyHeaderRegion:Z

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    .line 475
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 476
    iput p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->mVerticalSpacing:I

    return-void
.end method
