.class public Lme/jingbin/library/stickyview/StickyHeaderHandler;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"


# static fields
.field static final DEFAULT_ELEVATION:I = 0x5

.field private static final INVALID_POSITION:I = -0x1

.field static final NO_ELEVATION:I = -0x1

.field public static final TYPE_STICKY_VIEW:I = 0x1


# instance fields
.field private cachedElevation:I

.field private final checkMargins:Z

.field private currentHeader:Landroid/view/View;

.field private currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private dirty:Z

.field private headerElevation:F

.field private lastBoundPosition:I

.field private mHeaderPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private orientation:I

.field private final visibilityObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 39
    iput v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    .line 40
    iput v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->cachedElevation:I

    .line 42
    new-instance v0, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;

    invoke-direct {v0, p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;-><init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V

    iput-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->visibilityObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 53
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->recyclerViewHasPadding()Z

    move-result p1

    iput-boolean p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkMargins:Z

    return-void
.end method

.method static synthetic access$000(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 20
    iget-object p0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkElevation()V

    return-void
.end method

.method static synthetic access$300(Lme/jingbin/library/stickyview/StickyHeaderHandler;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentDimension()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerHasTranslation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateTranslation(I)V

    return-void
.end method

.method static synthetic access$600(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/ViewGroup;
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->getRecyclerParent()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lme/jingbin/library/stickyview/StickyHeaderHandler;Ljava/util/Map;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkHeaderPositions(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dirty:Z

    return p0
.end method

.method static synthetic access$900(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->detachHeader(I)V

    return-void
.end method

.method private attachHeader(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 201
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 202
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 203
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 204
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkTranslation()V

    .line 205
    iput-boolean v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dirty:Z

    return-void

    .line 208
    :cond_0
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    invoke-direct {p0, v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->detachHeader(I)V

    .line 209
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 210
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 211
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->resolveElevationSettings(Landroid/content/Context;)V

    .line 213
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->visibilityObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 215
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->getRecyclerParent()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    iget-boolean p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkMargins:Z

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateLayoutParams(Landroid/view/View;)V

    .line 219
    :cond_1
    iput-boolean v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dirty:Z

    return-void
.end method

.method private checkElevation()V
    .locals 4

    .line 283
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 284
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 286
    :cond_1
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->elevateHeader()V

    goto :goto_0

    .line 288
    :cond_2
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->settleHeader()V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkHeaderPositions(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->waitForLayoutAndRetry(Ljava/util/Map;)V

    return-void

    .line 104
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    if-gt v3, v4, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 109
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->offsetHeader(Landroid/view/View;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 113
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->resetTranslation()V

    .line 115
    :cond_5
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private checkTranslation()V
    .locals 3

    .line 256
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;

    invoke-direct {v2, p0, v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;-><init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private currentDimension()I
    .locals 3

    .line 223
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 229
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private detachHeader(I)V
    .locals 1

    .line 313
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 314
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->getRecyclerParent()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->clearVisibilityObserver()V

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    .line 317
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_0
    return-void
.end method

.method private dp2px(Landroid/content/Context;I)F
    .locals 0

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p2, p2, p1

    return p2
.end method

.method private elevateHeader()V
    .locals 2

    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private getHeaderPositionToShow(ILandroid/view/View;)I
    .locals 3

    .line 179
    invoke-direct {p0, p2}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerIsOffset(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 180
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mHeaderPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_0

    .line 182
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mHeaderPositions:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 185
    :cond_0
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mHeaderPositions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRecyclerParent()Landroid/view/ViewGroup;
    .locals 1

    .line 342
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private headerAwayFromEdge(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 334
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private headerHasTranslation()Z
    .locals 5

    .line 234
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    iget v2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 240
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private headerIsOffset(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 197
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchMarginsToPadding(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 5

    .line 327
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    iget v3, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 329
    :goto_1
    iget v4, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 330
    :goto_2
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private offsetHeader(Landroid/view/View;)F
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->shouldOffsetHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    neg-float p1, v0

    .line 152
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    neg-float p1, v0

    .line 155
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    return p1
.end method

.method private recyclerViewHasPadding()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetTranslation()V
    .locals 3

    .line 170
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private resolveElevationSettings(Landroid/content/Context;)V
    .locals 3

    .line 381
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->cachedElevation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 382
    invoke-direct {p0, p1, v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dp2px(Landroid/content/Context;I)F

    move-result p1

    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    :cond_0
    return-void
.end method

.method private safeDetachHeader()V
    .locals 3

    .line 369
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    .line 370
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->getRecyclerParent()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;

    invoke-direct {v2, p0, v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;-><init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private settleHeader()V
    .locals 2

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private shouldOffsetHeader(Landroid/view/View;)Z
    .locals 3

    .line 162
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private updateLayoutParams(Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 323
    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->matchMarginsToPadding(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method private updateTranslation(I)V
    .locals 3

    .line 245
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private waitForLayoutAndRetry(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->currentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;

    invoke-direct {v2, p0, v0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;-><init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;Landroid/view/View;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .line 135
    iget v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    invoke-direct {p0, v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->detachHeader(I)V

    return-void
.end method

.method public clearVisibilityObserver()V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->visibilityObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->visibilityObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public reset(I)V
    .locals 0

    .line 128
    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->orientation:I

    const/4 p1, -0x1

    .line 129
    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dirty:Z

    .line 131
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->safeDetachHeader()V

    return-void
.end method

.method public setElevateHeaders(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 120
    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->cachedElevation:I

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 122
    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerElevation:F

    .line 123
    iput v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->cachedElevation:I

    :goto_0
    return-void
.end method

.method public setHeaderPositions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mHeaderPositions:Ljava/util/List;

    return-void
.end method

.method public updateHeaderState(ILjava/util/Map;Lme/jingbin/library/stickyview/ViewHolderFactory;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;",
            "Lme/jingbin/library/stickyview/ViewHolderFactory;",
            "Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-direct {p0, p1, p4}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->getHeaderPositionToShow(ILandroid/view/View;)I

    move-result p1

    .line 69
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 70
    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    .line 71
    iget-boolean v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkMargins:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p4}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerAwayFromEdge(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    .line 79
    invoke-virtual {p3, p1}, Lme/jingbin/library/stickyview/ViewHolderFactory;->getViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    .line 80
    invoke-direct {p0, p3, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->attachHeader(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->dirty:Z

    .line 74
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->safeDetachHeader()V

    .line 75
    iput v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    goto :goto_2

    .line 82
    :cond_3
    iget-boolean p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkMargins:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, p4}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->headerAwayFromEdge(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    iget p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    invoke-direct {p0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->detachHeader(I)V

    .line 84
    iput v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->lastBoundPosition:I

    .line 86
    :cond_4
    :goto_2
    invoke-direct {p0, p2}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkHeaderPositions(Ljava/util/Map;)V

    .line 87
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lme/jingbin/library/stickyview/StickyHeaderHandler$2;

    invoke-direct {p2, p0}, Lme/jingbin/library/stickyview/StickyHeaderHandler$2;-><init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
