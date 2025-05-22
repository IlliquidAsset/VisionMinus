.class public Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AutoLocateHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;,
        Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;,
        Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private deltaX:I

.field private initPos:I

.field private isFirstPosChanged:Z

.field private isInit:Z

.field private isMoveFinished:Z

.field private itemCount:I

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

.field private mScroller:Landroid/widget/Scroller;

.field private oldMoveX:I

.field private oldSelectedPos:I

.field private parentWidth:I

.field private selectPos:I

.field private wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isFirstPosChanged:Z

    .line 38
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    .line 51
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->parentWidth:I

    .line 55
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    .line 64
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isFirstPosChanged:Z

    .line 38
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    .line 51
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->parentWidth:I

    .line 55
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    .line 64
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    .line 72
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isFirstPosChanged:Z

    .line 38
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    .line 51
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->parentWidth:I

    .line 55
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    .line 64
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isInit:Z

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isInit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isFirstPosChanged:Z

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->reCallListenerWhenChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->reCallListenerWhenAdd(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->reCallListenerWhenRemove(I)V

    return-void
.end method

.method private calculateSelectedPos()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemWidth()I

    move-result v0

    .line 303
    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    if-lez v1, :cond_0

    .line 304
    div-int/2addr v1, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    goto :goto_0

    .line 306
    :cond_0
    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    div-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    :goto_0
    return-void
.end method

.method private correctDeltax(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    if-gt v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemWidth()I

    move-result v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->calculateSelectedPos()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 80
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->mScroller:Landroid/widget/Scroller;

    .line 81
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;-><init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private reCallListenerWhenAdd(I)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    :cond_0
    return-void
.end method

.method private reCallListenerWhenChanged()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    if-eqz v0, :cond_0

    .line 170
    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    :cond_0
    return-void
.end method

.method private reCallListenerWhenRemove(I)V
    .locals 1

    .line 146
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->correctDeltax(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->correctDeltax(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 274
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeScroll()V

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldMoveX:I

    sub-int/2addr v0, v1

    add-int/2addr v1, v0

    .line 277
    iput v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldMoveX:I

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->scrollBy(II)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    if-eqz v0, :cond_1

    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyItemChanged(I)V

    .line 285
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyItemChanged(I)V

    .line 286
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    iput v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    .line 287
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    if-eqz v1, :cond_2

    .line 288
    invoke-interface {v1, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    .line 290
    :cond_2
    iput-boolean v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getParentWidth(Landroid/content/Context;)I
    .locals 1

    .line 41
    new-instance v0, Lcom/powervision/gcs/utils/ScreenUtils;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    .line 43
    div-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public moveToPosition(I)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 259
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldMoveX:I

    .line 263
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isMoveFinished:Z

    .line 264
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemWidth()I

    move-result v1

    .line 265
    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    if-eq p1, v2, :cond_1

    sub-int/2addr p1, v2

    mul-int p1, p1, v1

    .line 267
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getScrollY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 268
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->postInvalidate()V

    :cond_1
    return-void

    .line 260
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your position should be from 0 to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 219
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_5

    .line 222
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemWidth()I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getHeaderFooterWidth()I

    move-result v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_2

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    neg-int p1, v0

    .line 236
    invoke-virtual {p0, p1, v3}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->scrollBy(II)V

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    sub-int/2addr p1, v0

    .line 238
    invoke-virtual {p0, p1, v3}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->scrollBy(II)V

    goto :goto_0

    :cond_4
    add-int/2addr p1, v0

    neg-int p1, p1

    .line 240
    invoke-virtual {p0, p1, v3}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->scrollBy(II)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->calculateSelectedPos()V

    .line 244
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyItemChanged(I)V

    .line 245
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyItemChanged(I)V

    .line 246
    iget p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    .line 247
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    if-eqz v0, :cond_5

    .line 248
    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 297
    iget p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    .line 298
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->calculateSelectedPos()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3

    .line 176
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 177
    new-instance v0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;-><init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    .line 178
    new-instance v0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;-><init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 199
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->deltaX:I

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 204
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->wrapAdapter:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->isInit:Z

    return-void
.end method

.method public setInitPos(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 107
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->initPos:I

    .line 108
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->selectPos:I

    .line 109
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->oldSelectedPos:I

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This method should be called before setAdapter()!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItemCount(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    .line 121
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 122
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    goto :goto_0

    .line 124
    :cond_0
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->itemCount:I

    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This method should be called before setAdapter()!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 211
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The LayoutManager here must be LinearLayoutManager!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnSelectedPositionChangedListener(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->listener:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    return-void
.end method

.method public setParentWidth(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->parentWidth:I

    return-void
.end method
