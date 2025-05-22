.class public Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;
.super Ljava/lang/Object;
.source "ByRVItemSkeletonScreen.java"

# interfaces
.implements Lme/jingbin/library/skeleton/SkeletonScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    }
.end annotation


# instance fields
.field private isShow:Z

.field private loadMoreEnabled:Z

.field private final mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclerViewFrozen:Z

.field private final mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

.field private refreshEnabled:Z


# direct methods
.method private constructor <init>(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->isShow:Z

    .line 26
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->loadMoreEnabled:Z

    .line 27
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->refreshEnabled:Z

    .line 30
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$000(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$100(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    new-instance v0, Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-direct {v0}, Lme/jingbin/library/skeleton/SkeletonAdapter;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    .line 33
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$200(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setItemCount(I)V

    .line 34
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$300(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setLayoutReference(I)V

    .line 35
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$400(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setArrayOfLayoutReferences([I)V

    .line 36
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$500(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->shimmer(Z)V

    .line 37
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$600(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setShimmerColor(I)V

    .line 38
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$700(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setShimmerAngle(I)V

    .line 39
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$800(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/skeleton/SkeletonAdapter;->setShimmerDuration(I)V

    .line 40
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->access$900(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerViewFrozen:Z

    return-void
.end method

.method synthetic constructor <init>(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;-><init>(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->isShow:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerViewFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Lme/jingbin/library/ByRecyclerView;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Lme/jingbin/library/ByRecyclerView;

    .line 71
    iget-boolean v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->refreshEnabled:Z

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 72
    iget-boolean v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->loadMoreEnabled:Z

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->isShow:Z

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 48
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mSkeletonAdapter:Lme/jingbin/library/skeleton/SkeletonAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerViewFrozen:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerViewFrozen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v2, v0, Lme/jingbin/library/ByRecyclerView;

    if-eqz v2, :cond_1

    .line 53
    check-cast v0, Lme/jingbin/library/ByRecyclerView;

    .line 54
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->loadMoreEnabled:Z

    .line 55
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->isRefreshEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->refreshEnabled:Z

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    .line 57
    invoke-virtual {v0, v2}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 59
    :cond_1
    iput-boolean v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->isShow:Z

    return-void
.end method
