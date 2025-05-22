.class public Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelfCheackWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static BASE_ITEM_TYPE_FOOTER:I = 0x1312d00

.field private static BASE_ITEM_TYPE_HEADER:I = 0x989680


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mFooterViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isHeaderPosition(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isFooterPosition(I)Z

    move-result p0

    return p0
.end method

.method private createHeaderFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 72
    new-instance v0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$1;-><init>(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method private getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method private isFooterPosition(I)Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFooterViewType(I)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHeaderPosition(I)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHeaderViewType(I)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->BASE_ITEM_TYPE_FOOTER:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->BASE_ITEM_TYPE_FOOTER:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->BASE_ITEM_TYPE_HEADER:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->BASE_ITEM_TYPE_HEADER:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public adjustSpanSize(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 210
    new-instance v0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$3;-><init>(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 124
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    return v0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public notifyItemData(I)V
    .locals 3

    const-string v0, "selfcheck"

    .line 222
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " header= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemRangeData(II)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 96
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 97
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$2;-><init>(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 49
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isHeaderViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 51
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->createHeaderFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-direct {p0, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->isFooterViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 55
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->createHeaderFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mFooterViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 198
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 190
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

    return-void
.end method
