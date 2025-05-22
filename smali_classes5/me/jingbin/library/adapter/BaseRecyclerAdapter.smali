.class public abstract Lme/jingbin/library/adapter/BaseRecyclerAdapter;
.super Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter<",
        "TT;",
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mLayoutId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;-><init>()V

    .line 22
    iput p1, p0, Lme/jingbin/library/adapter/BaseRecyclerAdapter;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 27
    iput p1, p0, Lme/jingbin/library/adapter/BaseRecyclerAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method protected abstract bindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/adapter/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance p2, Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;

    iget v0, p0, Lme/jingbin/library/adapter/BaseRecyclerAdapter;->mLayoutId:I

    invoke-direct {p2, p0, p1, v0}, Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;-><init>(Lme/jingbin/library/adapter/BaseRecyclerAdapter;Landroid/view/ViewGroup;I)V

    return-object p2
.end method
