.class Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LPinnedRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;


# direct methods
.method constructor <init>(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$100(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$200(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$300(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$400(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$500(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V

    .line 73
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$400(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;I)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;I)I

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 86
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)[I

    move-result-object p2

    if-nez p2, :cond_2

    .line 87
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p3

    new-array p3, p3, [I

    invoke-static {p2, p3}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$602(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;[I)[I

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 90
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$700(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;[I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;I)I

    :cond_3
    :goto_0
    return-void
.end method
