.class public Lme/jingbin/library/skeleton/BySkeleton;
.super Ljava/lang/Object;
.source "BySkeleton.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindItem(Landroidx/recyclerview/widget/RecyclerView;)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 1

    .line 26
    new-instance v0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;

    invoke-direct {v0, p0}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method public static bindView(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 1

    .line 39
    new-instance v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;

    invoke-direct {v0, p0}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    return-object v0
.end method
