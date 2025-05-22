.class public Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "CustomItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;
    }
.end annotation


# instance fields
.field private isCanDrag:Z

.field private isCanSwipe:Z

.field private mOnItemTouchCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;


# direct methods
.method public constructor <init>(Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanDrag:Z

    .line 19
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanSwipe:Z

    .line 22
    iput-object p1, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->mOnItemTouchCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 31
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p1, 0xf

    .line 36
    invoke-static {p1, v0}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 37
    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_3

    .line 38
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/16 p2, 0xc

    const/4 v1, 0x3

    if-nez p1, :cond_1

    const/4 p2, 0x3

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-static {v0, p2}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanSwipe:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanDrag:Z

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->mOnItemTouchCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;->onMove(II)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanDrag:Z

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->isCanSwipe:Z

    return-void
.end method
