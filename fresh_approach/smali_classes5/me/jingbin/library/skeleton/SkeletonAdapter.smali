.class public Lme/jingbin/library/skeleton/SkeletonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SkeletonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mColor:I

.field private mItemCount:I

.field private mLayoutArrayReferences:[I

.field private mLayoutReference:I

.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerDuration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private doesArrayOfLayoutsExist()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutArrayReferences:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCorrectLayoutItem(I)I
    .locals 2

    .line 94
    invoke-direct {p0}, Lme/jingbin/library/skeleton/SkeletonAdapter;->doesArrayOfLayoutsExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutArrayReferences:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    .line 97
    :cond_0
    iget p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutReference:I

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 62
    iget v0, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 49
    invoke-direct {p0}, Lme/jingbin/library/skeleton/SkeletonAdapter;->doesArrayOfLayoutsExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->getCorrectLayoutItem(I)I

    move-result p1

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    iget-boolean p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmer:Z

    if-eqz p2, :cond_0

    .line 39
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lme/jingbin/library/skeleton/ShimmerLayout;

    .line 40
    iget p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmerDuration:I

    invoke-virtual {p1, p2}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 41
    iget p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmerAngle:I

    invoke-virtual {p1, p2}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerAngle(I)V

    .line 42
    iget p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mColor:I

    invoke-virtual {p1, p2}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerColor(I)V

    .line 43
    invoke-virtual {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lme/jingbin/library/skeleton/SkeletonAdapter;->doesArrayOfLayoutsExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iput p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutReference:I

    .line 28
    :cond_0
    iget-boolean p2, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmer:Z

    if-eqz p2, :cond_1

    .line 29
    new-instance p2, Lme/jingbin/library/skeleton/ShimmerViewHolder;

    iget v1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutReference:I

    invoke-direct {p2, v0, p1, v1}, Lme/jingbin/library/skeleton/ShimmerViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    return-object p2

    .line 32
    :cond_1
    new-instance p2, Lme/jingbin/library/skeleton/SkeletonAdapter$1;

    iget v1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutReference:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lme/jingbin/library/skeleton/SkeletonAdapter$1;-><init>(Lme/jingbin/library/skeleton/SkeletonAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setArrayOfLayoutReferences([I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutArrayReferences:[I

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 74
    iput p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mItemCount:I

    return-void
.end method

.method public setLayoutReference(I)V
    .locals 0

    .line 66
    iput p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mLayoutReference:I

    return-void
.end method

.method public setShimmerAngle(I)V
    .locals 0

    .line 90
    iput p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmerAngle:I

    return-void
.end method

.method public setShimmerColor(I)V
    .locals 0

    .line 78
    iput p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mColor:I

    return-void
.end method

.method public setShimmerDuration(I)V
    .locals 0

    .line 86
    iput p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmerDuration:I

    return-void
.end method

.method public shimmer(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lme/jingbin/library/skeleton/SkeletonAdapter;->mShimmer:Z

    return-void
.end method
