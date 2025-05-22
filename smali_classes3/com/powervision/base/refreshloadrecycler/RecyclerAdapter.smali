.class public Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;
.super Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER:I = -0x1


# instance fields
.field private adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

.field private inflater:Landroid/view/LayoutInflater;

.field private isNoData:Z

.field private isShowFooter:Z


# direct methods
.method public constructor <init>(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;Landroid/content/Context;ZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    .line 31
    iput-boolean p3, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isShowFooter:Z

    .line 32
    iput-boolean p4, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isNoData:Z

    .line 33
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public isPinnedPosition(I)Z
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->isPinnedPosition(I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 55
    instance-of v0, p1, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;

    .line 57
    iget-object p2, p1, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isNoData:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object p1, p1, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;->mMessage:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isNoData:Z

    if-eqz p2, :cond_1

    const-string p2, "--- \u626f\u5230\u5e95\u4e86 ---"

    goto :goto_1

    :cond_1
    const-string p2, "\u52a0\u8f7d\u4e2d..."

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->adapter:Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/powervision/base/R$layout;->item_load_more:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;

    invoke-direct {p2, p0, p1}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;-><init>(Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;Landroid/view/View;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public setNoData(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isNoData:Z

    .line 106
    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShowFooter(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->isShowFooter:Z

    .line 101
    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
