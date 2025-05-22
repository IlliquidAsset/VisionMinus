.class Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;


# direct methods
.method constructor <init>(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-nez p2, :cond_0

    .line 67
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$100(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$200(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$300(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$400(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$500(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)V

    .line 70
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$400(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;I)I

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;I)I

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 83
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)[I

    move-result-object p2

    if-nez p2, :cond_2

    .line 84
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p3

    new-array p3, p3, [I

    invoke-static {p2, p3}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$602(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;[I)[I

    .line 86
    :cond_2
    iget-object p2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 87
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;->this$0:Lcom/powervision/base/refreshloadrecycler/LRecyclerView;

    invoke-static {p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$600(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$700(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;[I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->access$102(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;I)I

    :cond_3
    :goto_0
    return-void
.end method
