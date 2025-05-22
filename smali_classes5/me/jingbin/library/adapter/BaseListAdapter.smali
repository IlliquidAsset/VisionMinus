.class public abstract Lme/jingbin/library/adapter/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lme/jingbin/library/adapter/BaseListHolder;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 100
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p0, p3, p1}, Lme/jingbin/library/adapter/BaseListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseListHolder;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Lme/jingbin/library/adapter/BaseListHolder;->getItemView()Landroid/view/View;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lme/jingbin/library/adapter/BaseListHolder;

    move-object v1, p3

    move-object p3, p2

    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lme/jingbin/library/adapter/BaseListAdapter;->onBindView(Lme/jingbin/library/adapter/BaseListHolder;Ljava/lang/Object;I)V

    :cond_1
    return-object p3
.end method

.method protected abstract onBindView(Lme/jingbin/library/adapter/BaseListHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;I)V"
        }
    .end annotation
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseListHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-void
.end method
