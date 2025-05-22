.class Lcom/powervision/aircraft/ui/views/ScollSelectView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_5

    .line 100
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$102(Lcom/powervision/aircraft/ui/views/ScollSelectView;Landroid/view/View;)Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$100(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v0, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    .line 108
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_2

    .line 111
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v2, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    .line 112
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$300(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$400(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ne p2, v2, :cond_1

    .line 114
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_3

    .line 115
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    .line 131
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$500(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$300(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/views/ScollSelectView;->onScrollSelect:Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;

    if-eqz p1, :cond_4

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/views/ScollSelectView;->onScrollSelect:Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$300(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;->onItemSelect(I)V

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$300(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$502(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    .line 144
    :goto_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$2;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/ui/views/RoateTextView;

    .line 146
    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/RoateTextView;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
