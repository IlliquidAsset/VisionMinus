.class public Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PinnedHeaderItemDecoration.java"

# interfaces
.implements Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;


# instance fields
.field private mPinnedHeaderPosition:I

.field private mPinnedHeaderRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderPosition:I

    return-void
.end method

.method private ensurePinnedHeaderViewLayout(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 100
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 104
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 105
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 109
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, p2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PinnedHeaderItemDecoration"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private getPinnedHeaderViewPosition(ILcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;)I
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 84
    invoke-virtual {p2, p1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->isPinnedPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public getPinnedHeaderPosition()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderPosition:I

    return v0
.end method

.method public getPinnedHeaderRect()Landroid/graphics/Rect;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 22
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of p3, p3, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    if-lez p3, :cond_5

    .line 25
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 29
    invoke-direct {p0, v1, p3}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->getPinnedHeaderViewPosition(ILcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;)I

    move-result v1

    .line 30
    iput v1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 33
    invoke-virtual {p3, v1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->getItemViewType(I)I

    move-result v2

    .line 32
    invoke-virtual {p3, p2, v2}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 34
    invoke-virtual {p3, v2, v1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 36
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    invoke-direct {p0, v1, p2}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->ensurePinnedHeaderViewLayout(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 40
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->isPinnedPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_0

    if-lez v4, :cond_0

    sub-int v3, v4, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p3

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_3

    .line 54
    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v0, v0, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 56
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 58
    iget-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PinnedHeaderItemDecoration"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;->mPinnedHeaderRect:Landroid/graphics/Rect;

    :cond_5
    :goto_1
    return-void
.end method
