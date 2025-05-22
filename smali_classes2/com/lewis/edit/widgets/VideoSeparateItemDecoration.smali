.class public Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VideoSeparateItemDecoration.java"


# instance fields
.field private mItemCount:I

.field private mItemMargin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemCount:I

    .line 20
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 38
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    iget v0, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemMargin:I

    goto :goto_0

    .line 49
    :cond_0
    iget v2, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemCount:I

    if-ne v0, v2, :cond_1

    .line 51
    iget v0, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemMargin:I

    move v2, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 54
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 55
    invoke-virtual {v3, v0, v1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 56
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public updateItemCount(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/lewis/edit/widgets/VideoSeparateItemDecoration;->mItemCount:I

    return-void
.end method
