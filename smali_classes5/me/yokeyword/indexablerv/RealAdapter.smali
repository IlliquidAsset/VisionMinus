.class Lme/yokeyword/indexablerv/RealAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RealAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lme/yokeyword/indexablerv/IndexableEntity;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/IndexableAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mDatasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mFooterAdapterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lme/yokeyword/indexablerv/IndexableFooterAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterDatasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mHeaderAdapterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lme/yokeyword/indexablerv/IndexableHeaderAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDatasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

.field private mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lme/yokeyword/indexablerv/RealAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    return-object p0
.end method

.method private processAddHeaderFooterData(Ljava/util/ArrayList;Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 223
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    if-ne v1, p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    iget-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 228
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    goto :goto_1

    :cond_0
    move p1, v0

    .line 230
    :goto_1
    iget-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    invoke-virtual {p0, v0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyItemInserted(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processremoveHeaderFooterData(Ljava/util/ArrayList;Lme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 243
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    if-ne v1, p2, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyItemRemoved(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addHeaderFooterData(ZLme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lme/yokeyword/indexablerv/RealAdapter;->processAddHeaderFooterData(Ljava/util/ArrayList;Lme/yokeyword/indexablerv/EntityWrapper;Lme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method

.method addIndexableFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method addIndexableHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 36
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 198
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 82
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/EntityWrapper;->getItemType()I

    move-result p1

    return p1
.end method

.method getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 175
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 177
    invoke-virtual {p0, p2}, Lme/yokeyword/indexablerv/RealAdapter;->getItemViewType(I)I

    move-result p2

    const v1, 0x7ffffffe

    if-ne p2, v1, :cond_1

    const/4 p2, 0x4

    .line 179
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 180
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    if-ne p2, v1, :cond_2

    .line 184
    iget-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yokeyword/indexablerv/IndexableEntity;

    invoke-virtual {p2, p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 188
    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    .line 192
    :goto_0
    invoke-virtual {v0}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const v0, 0x7ffffffe

    if-ne p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    .line 92
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 96
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    .line 100
    :goto_0
    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 103
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lme/yokeyword/indexablerv/RealAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lme/yokeyword/indexablerv/RealAdapter$1;-><init>(Lme/yokeyword/indexablerv/RealAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lme/yokeyword/indexablerv/RealAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lme/yokeyword/indexablerv/RealAdapter$2;-><init>(Lme/yokeyword/indexablerv/RealAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method

.method removeHeaderFooterData(ZLme/yokeyword/indexablerv/EntityWrapper;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0, p1, p2}, Lme/yokeyword/indexablerv/RealAdapter;->processremoveHeaderFooterData(Ljava/util/ArrayList;Lme/yokeyword/indexablerv/EntityWrapper;)V

    return-void
.end method

.method removeIndexableFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->getItemViewType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method removeIndexableHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderAdapterMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->getItemViewType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDatas(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter;->mFooterDatasList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 70
    :cond_0
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatas:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter;->mDatasList:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mHeaderDatasList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/RealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setIndexableAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    return-void
.end method

.method setOnItemContentClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mContentClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    return-void
.end method

.method setOnItemContentLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mContentLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    return-void
.end method

.method setOnItemTitleClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mTitleClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    return-void
.end method

.method setOnItemTitleLongClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter;->mTitleLongClickListener:Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    return-void
.end method
