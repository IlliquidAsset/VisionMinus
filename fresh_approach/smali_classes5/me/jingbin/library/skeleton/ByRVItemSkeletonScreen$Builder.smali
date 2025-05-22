.class public Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
.super Ljava/lang/Object;
.source "ByRVItemSkeletonScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mFrozen:Z

.field private mItemCount:I

.field private mItemResID:I

.field private mItemsResIDArray:[I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerColor:I

.field private mShimmerDuration:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmer:Z

    const/16 v1, 0xa

    .line 82
    iput v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemCount:I

    .line 83
    sget v1, Lme/jingbin/library/R$layout;->layout_by_default_item_skeleton:I

    iput v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemResID:I

    const/16 v1, 0x3e8

    .line 86
    iput v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerDuration:I

    const/16 v1, 0x14

    .line 87
    iput v1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerAngle:I

    .line 88
    iput-boolean v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mFrozen:Z

    .line 91
    iput-object p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lme/jingbin/library/R$color;->by_skeleton_shimmer_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerColor:I

    return-void
.end method

.method static synthetic access$000(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemCount:I

    return p0
.end method

.method static synthetic access$300(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemResID:I

    return p0
.end method

.method static synthetic access$400(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)[I
    .locals 0

    .line 78
    iget-object p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemsResIDArray:[I

    return-object p0
.end method

.method static synthetic access$500(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmer:Z

    return p0
.end method

.method static synthetic access$600(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerColor:I

    return p0
.end method

.method static synthetic access$700(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerAngle:I

    return p0
.end method

.method static synthetic access$800(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerDuration:I

    return p0
.end method

.method static synthetic access$900(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mFrozen:Z

    return p0
.end method


# virtual methods
.method public adapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public angle(I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 142
    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerAngle:I

    return-object p0
.end method

.method public color(I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerColor:I

    return-object p0
.end method

.method public count(I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 107
    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemCount:I

    return-object p0
.end method

.method public duration(I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 126
    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmerDuration:I

    return-object p0
.end method

.method public frozen(Z)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 167
    iput-boolean p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mFrozen:Z

    return-object p0
.end method

.method public load(I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 150
    iput p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemResID:I

    return-object p0
.end method

.method public loadArrayOfLayouts([I)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mItemsResIDArray:[I

    return-object p0
.end method

.method public shimmer(Z)Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;
    .locals 0

    .line 115
    iput-boolean p1, p0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;->mShimmer:Z

    return-object p0
.end method

.method public show()Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;
    .locals 2

    .line 172
    new-instance v0, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;-><init>(Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$Builder;Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen$1;)V

    .line 173
    invoke-virtual {v0}, Lme/jingbin/library/skeleton/ByRVItemSkeletonScreen;->show()V

    return-object v0
.end method
