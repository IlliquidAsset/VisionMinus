.class abstract Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;
.super Ljava/lang/Object;
.source "AbstractHeaderFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;,
        Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

.field mEntityWrapperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/lang/String;

.field private final mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

.field private mIndexTitle:Ljava/lang/String;

.field protected mListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mLongListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-direct {v0}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    .line 21
    new-instance v0, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-direct {v0}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndex:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexTitle:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 41
    invoke-direct {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->wrapEntity()Lme/yokeyword/indexablerv/EntityWrapper;

    move-result-object p1

    const p2, 0x7ffffffe

    .line 42
    invoke-virtual {p1, p2}, Lme/yokeyword/indexablerv/EntityWrapper;->setItemType(I)V

    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 45
    invoke-direct {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->wrapEntity()Lme/yokeyword/indexablerv/EntityWrapper;

    move-result-object p2

    .line 46
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lme/yokeyword/indexablerv/EntityWrapper;->setData(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wrapEntity()Lme/yokeyword/indexablerv/EntityWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-direct {v0}, Lme/yokeyword/indexablerv/EntityWrapper;-><init>()V

    .line 52
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndex(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexTitle(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getHeaderFooterType()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setHeaderFooterType(I)V

    .line 55
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private wrapEntity(I)Lme/yokeyword/indexablerv/EntityWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-direct {v0}, Lme/yokeyword/indexablerv/EntityWrapper;-><init>()V

    .line 61
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndex(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexTitle(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getHeaderFooterType()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/EntityWrapper;->setHeaderFooterType(I)V

    .line 64
    iget-object v1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 116
    invoke-direct {p0, v1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->wrapEntity(I)Lme/yokeyword/indexablerv/EntityWrapper;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/yokeyword/indexablerv/EntityWrapper;->setItemType(I)V

    .line 118
    invoke-virtual {v1, p2}, Lme/yokeyword/indexablerv/EntityWrapper;->setData(Ljava/lang/Object;)V

    if-lez v0, :cond_2

    .line 121
    iget-object p2, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getHeaderFooterType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1, v1}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->notifyAdd(ZLjava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    invoke-direct {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->wrapEntity()Lme/yokeyword/indexablerv/EntityWrapper;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/yokeyword/indexablerv/EntityWrapper;->setItemType(I)V

    .line 87
    invoke-virtual {v1, p1}, Lme/yokeyword/indexablerv/EntityWrapper;->setData(Ljava/lang/Object;)V

    if-lez v0, :cond_1

    .line 90
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getHeaderFooterType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->notifyAdd(ZLjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public addDatas(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addData(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->addData(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getDatas()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 158
    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getItemType()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/yokeyword/indexablerv/EntityWrapper;->setItemType(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getHeaderFooterType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getItemViewType()I
.end method

.method getOnItemClickListener()Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;

    return-object v0
.end method

.method getOnItemLongClickListener()Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;
    .locals 1

    .line 153
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mLongListener:Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 79
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->notifyChanged()V

    return-void
.end method

.method public abstract onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method registerDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method registerIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeData(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 97
    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 98
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mEntityWrapperList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getHeaderFooterType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->notifyRemove(ZLjava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;->notifyChanged()V

    :cond_2
    return-void
.end method

.method unregisterDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mDataSetObservable:Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method unregisterIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->mIndexBarDataSetObservable:Lme/yokeyword/indexablerv/database/IndexBarDataObservable;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/database/IndexBarDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
