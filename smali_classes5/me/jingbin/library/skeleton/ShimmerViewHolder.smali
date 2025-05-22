.class public Lme/jingbin/library/skeleton/ShimmerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShimmerViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 2

    .line 18
    sget v0, Lme/jingbin/library/R$layout;->layout_by_skeleton_shimmer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    iget-object p2, p0, Lme/jingbin/library/skeleton/ShimmerViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
