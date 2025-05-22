.class public Lcom/powervision/media/widgets/GalleryItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GalleryItemDecoration.java"


# instance fields
.field private final mOtherPageVisible:I

.field private final mPageMargin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/powervision/media/widgets/GalleryItemDecoration;->mPageMargin:I

    const/16 v0, 0xf

    .line 17
    iput v0, p0, Lcom/powervision/media/widgets/GalleryItemDecoration;->mOtherPageVisible:I

    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    const/high16 p4, 0x42180000    # 38.0f

    invoke-direct {p0, p4}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    move-result p4

    sub-int/2addr p1, p4

    const/high16 p4, 0x40800000    # 4.0f

    .line 25
    invoke-direct {p0, p4}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    .line 27
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 28
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    const/high16 v0, 0x41980000    # 19.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-nez p4, :cond_0

    invoke-direct {p0, v0}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    move-result p4

    .line 29
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne v2, p3, :cond_1

    invoke-direct {p0, v0}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    move-result p3

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/powervision/media/widgets/GalleryItemDecoration;->dp2px(F)I

    move-result p3

    .line 32
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, p4, v1, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 34
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
