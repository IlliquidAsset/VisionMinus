.class public Lcom/yalantis/ucrop/view/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    const p2, 0x7fffffff

    .line 24
    iput p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    .line 25
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    .line 28
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 32
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataChanged:Z

    .line 65
    new-instance p1, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;

    invoke-direct {p1, p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;-><init>(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 278
    new-instance p1, Lcom/yalantis/ucrop/view/widget/HorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView$3;-><init>(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 36
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/yalantis/ucrop/view/widget/HorizontalListView;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    return p0
.end method

.method static synthetic access$400(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 124
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 125
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private fillList(I)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->fillListRight(II)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 188
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    .line 210
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    if-ltz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 214
    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    .line 215
    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    .line 192
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 198
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    .line 202
    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    .line 205
    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 40
    :try_start_0
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    .line 42
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    .line 43
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mCurrentX:I

    .line 44
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    const v0, 0x7fffffff

    .line 45
    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 6

    .line 239
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v0, v3

    .line 245
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    if-gtz v2, :cond_0

    .line 222
    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDisplayOffset:I

    .line 223
    iget-object v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 225
    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mLeftViewIndex:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 233
    iget v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mRightViewIndex:I

    .line 234
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->initView()V

    .line 108
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 109
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 258
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 267
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 131
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 132
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataChanged:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 136
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mCurrentX:I

    .line 137
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->initView()V

    .line 138
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 139
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    .line 140
    iput-boolean p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataChanged:Z

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    .line 145
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    .line 148
    :cond_2
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    const/4 p3, 0x1

    if-gtz p1, :cond_3

    .line 149
    iput p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    .line 150
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 152
    :cond_3
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    iget p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    if-lt p1, p2, :cond_4

    .line 153
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mMaxX:I

    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    .line 154
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 157
    :cond_4
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mCurrentX:I

    iget p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    sub-int/2addr p1, p2

    .line 159
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->removeNonVisibleItems(I)V

    .line 160
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->fillList(I)V

    .line 161
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->positionItems(I)V

    .line 163
    iget p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mCurrentX:I

    .line 165
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 166
    new-instance p1, Lcom/yalantis/ucrop/view/widget/HorizontalListView$2;

    invoke-direct {p1, p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView$2;-><init>(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 3

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mNextX:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 253
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 102
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->reset()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
