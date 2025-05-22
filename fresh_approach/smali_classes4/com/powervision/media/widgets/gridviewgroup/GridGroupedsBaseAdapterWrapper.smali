.class public Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "GridGroupedsBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedHolder;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;,
        Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;
    }
.end annotation


# static fields
.field protected static final ID_FILLER:I = -0x2

.field protected static final ID_HEADER:I = -0x1

.field protected static final ID_HEADER_FILLER:I = -0x3

.field protected static final POSITION_FILLER:I = -0x1

.field protected static final POSITION_HEADER:I = -0x2

.field protected static final POSITION_HEADER_FILLER:I = -0x3

.field protected static final VIEW_TYPE_FILLER:I = 0x0

.field protected static final VIEW_TYPE_HEADER:I = 0x1

.field protected static final VIEW_TYPE_HEADER_FILLER:I = 0x2

.field private static final sNumViewTypes:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCounted:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

.field private mGridView:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

.field private mLastHeaderViewSeen:Landroid/view/View;

.field private mLastViewSeen:Landroid/view/View;

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    .line 31
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;)V

    iput-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    const/4 v1, 0x1

    .line 50
    iput v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mNumColumns:I

    .line 53
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mGridView:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    .line 55
    iput-object p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    .line 56
    invoke-interface {p3, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mGridView:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    return-object p0
.end method

.method private getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;
    .locals 0

    .line 207
    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;

    if-nez p1, :cond_0

    .line 209
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;

    iget-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;)V

    .line 212
    :cond_0
    invoke-virtual {p1, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    return-object p1
.end method

.method private getGroupedFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;
    .locals 0

    .line 218
    check-cast p2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-nez p2, :cond_0

    .line 220
    new-instance p2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Landroid/content/Context;)V

    :cond_0
    return-object p2
.end method

.method private unFilledSpacesInHeaderGroup(I)I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCountForGrouped(I)I

    move-result p1

    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mNumColumns:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int p1, v0, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 6

    .line 66
    iget-boolean v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    .line 70
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getNumGroupeds()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    .line 73
    iput-boolean v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    return v0

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 77
    iget v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v4, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCountForGrouped(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->unFilledSpacesInHeaderGroup(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mNumColumns:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    iput-boolean v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    .line 80
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    return v0
.end method

.method protected getHeaderId(I)J
    .locals 2

    .line 231
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mGrouped:I

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getNumGroupeds()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mGrouped:I

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    .line 86
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    .line 95
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 98
    :cond_0
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    .line 101
    :cond_1
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    const-wide/16 v0, -0x3

    return-wide v0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 109
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    .line 110
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 113
    :cond_0
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_1
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_2

    const/4 p1, 0x2

    return p1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    .line 129
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 130
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mGrouped:I

    invoke-direct {p0, v0, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getGroupedFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mGrouped:I

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, p1, v1, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 132
    iget-object p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mGridView:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->detachHeader(Landroid/view/View;)V

    .line 133
    invoke-virtual {p2, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mGridView:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p3, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->attachHeader(Landroid/view/View;)V

    .line 136
    iput-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 137
    invoke-virtual {p2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;->forceLayout()V

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;

    move-result-object p2

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_0

    .line 141
    :cond_1
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    iput-object p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWrappedAdapter()Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    move-result-object p1

    .line 182
    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    iget p1, p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mNumColumns:I

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    return-void
.end method

.method protected translatePosition(I)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getNumGroupeds()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 246
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    invoke-direct {p1, p0, v1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1

    .line 248
    :cond_0
    new-instance v0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    invoke-direct {v0, p0, p1, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object v0

    :cond_1
    move v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 257
    iget-object v4, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v4, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCountForGrouped(I)I

    move-result v4

    if-nez p1, :cond_2

    .line 259
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    const/4 v0, -0x2

    invoke-direct {p1, p0, v0, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1

    .line 261
    :cond_2
    iget v5, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mNumColumns:I

    sub-int/2addr p1, v5

    if-gez p1, :cond_3

    .line 263
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    const/4 v0, -0x3

    invoke-direct {p1, p0, v0, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1

    :cond_3
    sub-int/2addr v2, v5

    if-ge p1, v4, :cond_4

    .line 267
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    invoke-direct {p1, p0, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1

    .line 269
    :cond_4
    invoke-direct {p0, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->unFilledSpacesInHeaderGroup(I)I

    move-result v5

    sub-int/2addr v2, v5

    add-int/2addr v4, v5

    sub-int/2addr p1, v4

    if-gez p1, :cond_5

    .line 275
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    invoke-direct {p1, p0, v1, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_6
    new-instance p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;

    invoke-direct {p1, p0, v1, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;-><init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V

    return-object p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0, p1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method protected updateCount()V
    .locals 4

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    .line 283
    iget-object v1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getNumGroupeds()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCount:I

    .line 286
    iput-boolean v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    return-void

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    .line 290
    iget-object v3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mDelegate:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;

    invoke-interface {v3, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapter;->getCountForGrouped(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iput-boolean v2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->mCounted:Z

    return-void
.end method
