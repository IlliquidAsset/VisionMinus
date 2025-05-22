.class public Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PinnedHeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;
    }
.end annotation


# instance fields
.field private mPinnedHeaderClickListener:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;

.field private mPinnedHeaderHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPinnedHeaderDecoration()Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;
    .locals 3

    const/4 v0, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    .line 127
    instance-of v2, v1, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;

    if-eqz v2, :cond_1

    .line 128
    check-cast v1, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderClickListener:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->getPinnedHeaderDecoration()Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 48
    :cond_1
    invoke-interface {v0}, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;->getPinnedHeaderRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 49
    invoke-interface {v0}, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;->getPinnedHeaderPosition()I

    move-result v0

    if-eqz v1, :cond_5

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 51
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderClickListener:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->getPinnedHeaderDecoration()Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 76
    :cond_1
    invoke-interface {v0}, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;->getPinnedHeaderRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 77
    invoke-interface {v0}, Lcom/powervision/base/pinnedrecycler/IPinnedHeaderDecoration;->getPinnedHeaderPosition()I

    move-result v0

    if-eqz v1, :cond_9

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto/16 :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_5

    goto :goto_0

    .line 90
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    if-eqz v0, :cond_8

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 94
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 96
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 98
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v4

    .line 106
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 109
    iget-boolean v6, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    if-eqz v6, :cond_6

    float-to-int v2, v2

    float-to-int v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    iget-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderClickListener:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;

    invoke-interface {p1, v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;->onPinnedHeaderClick(I)V

    .line 111
    iput-boolean v3, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    return v4

    .line 114
    :cond_6
    iput-boolean v3, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    goto :goto_0

    .line 83
    :cond_7
    iput-boolean v3, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    iput-boolean v4, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderHandle:Z

    return v4

    .line 119
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 79
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnPinnedHeaderClickListener(Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->mPinnedHeaderClickListener:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;

    return-void
.end method
