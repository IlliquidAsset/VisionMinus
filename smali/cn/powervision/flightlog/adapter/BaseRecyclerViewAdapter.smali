.class public abstract Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/powervision/flightlog/adapter/RecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLayoutId:I

.field private mListener:Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;

.field private pagerPos:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 30
    iput p3, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mLayoutId:I

    .line 31
    iput p4, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->pagerPos:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract onBindData(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/powervision/flightlog/adapter/RecyclerViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->onBindViewHolder(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;I)V
    .locals 2

    .line 43
    iget-object v0, p1, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, v0, p2}, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->onBindData(Lcn/powervision/flightlog/adapter/RecyclerViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mListener:Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 56
    iget v1, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->pagerPos:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, p1, v1, v2}, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/powervision/flightlog/adapter/RecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/powervision/flightlog/adapter/RecyclerViewHolder;
    .locals 2

    .line 36
    iget-object p2, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance p2, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;

    invoke-direct {p2, p1}, Lcn/powervision/flightlog/adapter/RecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter;->mListener:Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method
