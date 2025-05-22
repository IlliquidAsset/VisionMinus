.class public Lcom/powervision/aircraft/ui/view/decoration/LapseDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LapseDecoration.java"


# instance fields
.field private dividerSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lcom/powervision/aircraft/ui/view/decoration/LapseDecoration;->dividerSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 20
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    instance-of p4, p4, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    if-eqz p4, :cond_1

    .line 21
    iget p4, p0, Lcom/powervision/aircraft/ui/view/decoration/LapseDecoration;->dividerSpace:I

    int-to-float p4, p4

    invoke-static {p4}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result p4

    .line 22
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    .line 23
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->isLastItem(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 26
    :cond_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 27
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 28
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method
