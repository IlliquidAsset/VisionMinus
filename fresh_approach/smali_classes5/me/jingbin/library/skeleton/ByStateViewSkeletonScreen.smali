.class public Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;
.super Ljava/lang/Object;
.source "ByStateViewSkeletonScreen.java"

# interfaces
.implements Lme/jingbin/library/skeleton/SkeletonScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShow:Z

.field private loadMoreEnabled:Z

.field private final mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

.field private final mShimmer:Z

.field private final mShimmerAngle:I

.field private final mShimmerColor:I

.field private final mShimmerDuration:I

.field private final mSkeletonResID:I

.field private refreshEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->isShow:Z

    .line 35
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$000(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    .line 36
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$100(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mSkeletonResID:I

    .line 37
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$200(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmer:Z

    .line 38
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$300(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerDuration:I

    .line 39
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$400(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerAngle:I

    .line 40
    invoke-static {p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->access$500(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerColor:I

    return-void
.end method

.method synthetic constructor <init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;-><init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)V

    return-void
.end method

.method private generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lme/jingbin/library/skeleton/ShimmerLayout;
    .locals 3

    .line 44
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lme/jingbin/library/R$layout;->layout_by_skeleton_shimmer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/jingbin/library/skeleton/ShimmerLayout;

    .line 45
    iget v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerColor:I

    invoke-virtual {p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerColor(I)V

    .line 46
    iget v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerAngle:I

    invoke-virtual {p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerAngle(I)V

    .line 47
    iget v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmerDuration:I

    invoke-virtual {p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 48
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mSkeletonResID:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Lme/jingbin/library/skeleton/ShimmerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :cond_0
    invoke-virtual {p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;

    invoke-direct {v0, p0, p1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;-><init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;Lme/jingbin/library/skeleton/ShimmerLayout;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 65
    invoke-virtual {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    return-object p1
.end method

.method private generateSkeletonLoadingView()Landroid/view/View;
    .locals 4

    .line 70
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->TAG:Ljava/lang/String;

    const-string v1, "the source view have not attach to any view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    iget-boolean v1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mShimmer:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, v0}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lme/jingbin/library/skeleton/ShimmerLayout;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mSkeletonResID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->isShow:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setStateViewEnabled(Z)V

    .line 97
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget-boolean v2, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->loadMoreEnabled:Z

    invoke-virtual {v0, v2}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    .line 98
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget-boolean v2, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->refreshEnabled:Z

    invoke-virtual {v0, v2}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 99
    iput-boolean v1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->isShow:Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 84
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->loadMoreEnabled:Z

    .line 85
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->isRefreshEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->refreshEnabled:Z

    .line 87
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 88
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    .line 89
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->generateSkeletonLoadingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->setStateView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->isShow:Z

    return-void
.end method
