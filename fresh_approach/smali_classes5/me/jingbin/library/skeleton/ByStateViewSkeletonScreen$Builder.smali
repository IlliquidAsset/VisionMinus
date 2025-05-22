.class public Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
.super Ljava/lang/Object;
.source "ByStateViewSkeletonScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerColor:I

.field private mShimmerDuration:I

.field private mSkeletonLayoutResID:I


# direct methods
.method public constructor <init>(Lme/jingbin/library/ByRecyclerView;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmer:Z

    const/16 v0, 0x3e8

    .line 109
    iput v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerDuration:I

    const/16 v0, 0x14

    .line 110
    iput v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerAngle:I

    .line 113
    iput-object p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    .line 114
    invoke-virtual {p1}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lme/jingbin/library/R$color;->by_skeleton_shimmer_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerColor:I

    return-void
.end method

.method static synthetic access$000(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)Lme/jingbin/library/ByRecyclerView;
    .locals 0

    .line 104
    iget-object p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I
    .locals 0

    .line 104
    iget p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mSkeletonLayoutResID:I

    return p0
.end method

.method static synthetic access$200(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmer:Z

    return p0
.end method

.method static synthetic access$300(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I
    .locals 0

    .line 104
    iget p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerDuration:I

    return p0
.end method

.method static synthetic access$400(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I
    .locals 0

    .line 104
    iget p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerAngle:I

    return p0
.end method

.method static synthetic access$500(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;)I
    .locals 0

    .line 104
    iget p0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerColor:I

    return p0
.end method


# virtual methods
.method public angle(I)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 0

    .line 156
    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerAngle:I

    return-object p0
.end method

.method public color(I)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mByRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerColor:I

    return-object p0
.end method

.method public duration(I)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 0

    .line 148
    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmerDuration:I

    return-object p0
.end method

.method public load(I)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 0

    .line 121
    iput p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mSkeletonLayoutResID:I

    return-object p0
.end method

.method public shimmer(Z)Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;
    .locals 0

    .line 137
    iput-boolean p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;->mShimmer:Z

    return-object p0
.end method

.method public show()Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;
    .locals 2

    .line 161
    new-instance v0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;-><init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$Builder;Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;)V

    .line 162
    invoke-virtual {v0}, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->show()V

    return-object v0
.end method
