.class public Lme/jingbin/library/decoration/GridSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpaceItemDecoration.java"


# instance fields
.field private fullPosition:I

.field private mEndFromSize:I

.field private mIncludeEdge:Z

.field private mSpacing:I

.field private mSpanCount:I

.field private mStartFromSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lme/jingbin/library/decoration/GridSpaceItemDecoration;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lme/jingbin/library/decoration/GridSpaceItemDecoration;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mEndFromSize:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    .line 87
    iput p1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    .line 88
    iput p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    .line 89
    iput-boolean p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mIncludeEdge:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mEndFromSize:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    .line 70
    iput p1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    .line 71
    iput-boolean p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mIncludeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 94
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    .line 95
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 96
    iget v2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mStartFromSize:I

    if-gt v2, v1, :cond_f

    iget v2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mEndFromSize:I

    sub-int/2addr p4, v2

    if-gt v1, p4, :cond_f

    .line 105
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 106
    instance-of p4, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 107
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 108
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    .line 109
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 111
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p4

    .line 113
    div-int v4, p3, p4

    iput v4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    .line 115
    invoke-virtual {p2, v1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v4

    .line 117
    div-int/2addr v4, p4

    .line 119
    invoke-virtual {p2, v1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p2

    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mStartFromSize:I

    sub-int/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_0

    .line 121
    :cond_0
    instance-of p4, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p4, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 125
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    .line 127
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result p2

    .line 128
    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p3

    iput p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    const/4 p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 v4, 0x0

    .line 131
    :goto_0
    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mStartFromSize:I

    sub-int/2addr v1, p4

    .line 133
    iget-boolean p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mIncludeEdge:Z

    if-eqz p4, :cond_8

    if-eqz p2, :cond_2

    .line 144
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 145
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 147
    :cond_2
    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    mul-int v5, v4, p4

    iget v6, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr v5, v6

    sub-int/2addr p4, v5

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    .line 148
    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    mul-int v4, v4, p4

    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr v4, p4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    if-le p3, v2, :cond_3

    if-ge p3, v0, :cond_7

    .line 153
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    if-ge v1, p2, :cond_7

    .line 155
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 158
    :cond_3
    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    if-ne p3, v2, :cond_4

    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    if-ge v1, p3, :cond_4

    if-eqz p2, :cond_4

    .line 160
    iput v1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    .line 163
    :cond_4
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    if-eq p2, v2, :cond_5

    if-ge v1, p2, :cond_6

    :cond_5
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    if-ge v1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 166
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 170
    :cond_7
    :goto_3
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_8
    if-eqz p2, :cond_9

    .line 183
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 184
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 186
    :cond_9
    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    mul-int p4, p4, v4

    iget v5, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr p4, v5

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 187
    iget p4, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    add-int/2addr v4, v0

    mul-int v4, v4, p4

    iget v5, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr v4, v5

    sub-int/2addr p4, v4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_4
    if-le p3, v2, :cond_a

    if-lt p3, v0, :cond_f

    .line 193
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_6

    .line 196
    :cond_a
    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    if-ne p3, v2, :cond_b

    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    if-ge v1, p3, :cond_b

    if-eqz p2, :cond_b

    .line 198
    iput v1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    .line 201
    :cond_b
    iget p3, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpanCount:I

    if-ge v1, p3, :cond_e

    if-eqz p2, :cond_c

    if-nez v1, :cond_e

    :cond_c
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->fullPosition:I

    if-eq p2, v2, :cond_d

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_5
    if-eqz v0, :cond_f

    .line 205
    iget p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_f
    :goto_6
    return-void
.end method

.method public setEndFromSize(I)Lme/jingbin/library/decoration/GridSpaceItemDecoration;
    .locals 0

    .line 228
    iput p1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mEndFromSize:I

    return-object p0
.end method

.method public setNoShowSpace(II)Lme/jingbin/library/decoration/GridSpaceItemDecoration;
    .locals 0

    .line 239
    iput p1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mStartFromSize:I

    .line 240
    iput p2, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mEndFromSize:I

    return-object p0
.end method

.method public setStartFrom(I)Lme/jingbin/library/decoration/GridSpaceItemDecoration;
    .locals 0

    .line 218
    iput p1, p0, Lme/jingbin/library/decoration/GridSpaceItemDecoration;->mStartFromSize:I

    return-object p0
.end method
