.class Lcom/lewis/edit/widgets/VideoSeparateLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VideoSeparateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/widgets/VideoSeparateLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;


# direct methods
.method constructor <init>(Lcom/lewis/edit/widgets/VideoSeparateLayout;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ltz p1, :cond_2

    .line 127
    iget-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-static {p2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$000(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 128
    iget-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-static {p2, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$102(Lcom/lewis/edit/widgets/VideoSeparateLayout;I)I

    .line 130
    iget-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-static {p2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$000(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    .line 131
    invoke-static {v2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$200(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    const/4 p3, 0x1

    .line 130
    :cond_1
    invoke-static {p2, v1, p3}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$300(Lcom/lewis/edit/widgets/VideoSeparateLayout;ZZ)V

    .line 132
    iget-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-static {p2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$000(Lcom/lewis/edit/widgets/VideoSeparateLayout;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/model/entries/VideoSeparateBean;

    .line 134
    iget-object p2, p0, Lcom/lewis/edit/widgets/VideoSeparateLayout$1;->this$0:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->getCurrentTime()I

    move-result p1

    invoke-static {p2, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->access$400(Lcom/lewis/edit/widgets/VideoSeparateLayout;I)V

    :cond_2
    return-void
.end method
