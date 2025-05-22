.class public Lme/yokeyword/indexablerv/SimpleHeaderAdapter;
.super Lme/yokeyword/indexablerv/IndexableHeaderAdapter;
.source "SimpleHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lme/yokeyword/indexablerv/IndexableEntity;",
        ">",
        "Lme/yokeyword/indexablerv/IndexableHeaderAdapter<",
        "TT;>;"
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


# direct methods
.method public constructor <init>(Lme/yokeyword/indexablerv/IndexableAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/indexablerv/IndexableAdapter<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p2, p3, p4}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    iput-object p1, p0, Lme/yokeyword/indexablerv/SimpleHeaderAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    return-void
.end method


# virtual methods
.method public getItemViewType()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public bridge synthetic onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lme/yokeyword/indexablerv/IndexableEntity;

    invoke-virtual {p0, p1, p2}, Lme/yokeyword/indexablerv/SimpleHeaderAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V

    return-void
.end method

.method public onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lme/yokeyword/indexablerv/SimpleHeaderAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/indexablerv/IndexableAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V

    return-void
.end method

.method public onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 27
    iget-object v0, p0, Lme/yokeyword/indexablerv/SimpleHeaderAdapter;->mAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
