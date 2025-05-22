.class Lme/jingbin/library/ByRecyclerView$WrapAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/ByRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lme/jingbin/library/ByRecyclerView;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 479
    iput-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 544
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getFooterViewSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getLoadMoreSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getStateViewSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 547
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getFooterViewSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getLoadMoreSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getStateViewSize()I

    move-result v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .line 586
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 587
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 588
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 589
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 553
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2710

    return p1

    .line 556
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v0

    sub-int/2addr p1, v0

    .line 558
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$1300(Lme/jingbin/library/ByRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 560
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x2713

    return p1

    .line 563
    :cond_2
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x2712

    return p1

    .line 566
    :cond_3
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreView(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x2711

    return p1

    .line 570
    :cond_4
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_6

    .line 571
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 572
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 574
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    .line 575
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0, p1}, Lme/jingbin/library/ByRecyclerView;->access$1400(Lme/jingbin/library/ByRecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_5

    return p1

    .line 576
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ByRecyclerView require itemViewType in adapter should be less than 10000 !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 483
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 597
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 598
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 599
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 600
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 601
    new-instance v1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;

    invoke-direct {v1, p0, v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 614
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 507
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 512
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 515
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p2}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 531
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 533
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 490
    new-instance p1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p2}, Lme/jingbin/library/ByRecyclerView;->access$700(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/BaseRefreshHeader;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object p1

    .line 491
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0, p2}, Lme/jingbin/library/ByRecyclerView;->access$800(Lme/jingbin/library/ByRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    new-instance p1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0, p2}, Lme/jingbin/library/ByRecyclerView;->access$900(Lme/jingbin/library/ByRecyclerView;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/16 v0, 0x2712

    if-ne p2, v0, :cond_2

    .line 494
    new-instance p1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p2}, Lme/jingbin/library/ByRecyclerView;->access$1000(Lme/jingbin/library/ByRecyclerView;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object p1

    :cond_2
    const/16 v0, 0x2713

    if-ne p2, v0, :cond_3

    .line 496
    new-instance p1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p2}, Lme/jingbin/library/ByRecyclerView;->access$1100(Lme/jingbin/library/ByRecyclerView;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object p1

    :cond_3
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_4

    .line 498
    new-instance p1, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p2}, Lme/jingbin/library/ByRecyclerView;->access$200(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/BaseLoadMore;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object p1

    .line 500
    :cond_4
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p2, p1}, Lme/jingbin/library/ByRecyclerView;->access$1200(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 651
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 624
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 625
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 628
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 629
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 630
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 631
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreView(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 632
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    .line 634
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 636
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 646
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
