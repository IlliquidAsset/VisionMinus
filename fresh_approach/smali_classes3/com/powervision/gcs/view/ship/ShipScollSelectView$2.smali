.class Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ShipScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipScollSelectView;->setDatas([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_5

    .line 95
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$102(Lcom/powervision/gcs/view/ship/ShipScollSelectView;Landroid/view/View;)Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$100(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    add-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$302(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I

    .line 103
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    if-gez v0, :cond_2

    .line 106
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    add-int/lit8 p2, p2, 0x3

    invoke-static {v1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$302(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I

    .line 107
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$300(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$400(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    if-ne p2, v1, :cond_1

    .line 109
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-le p2, v1, :cond_3

    .line 111
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$200(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$302(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I

    .line 128
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$500(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$300(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->onScrollSelect:Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;

    if-eqz p1, :cond_4

    .line 130
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->onScrollSelect:Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$300(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$OnScrollSelect;->onItemSelect(I)V

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$300(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$502(Lcom/powervision/gcs/view/ship/ShipScollSelectView;I)I

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    .line 141
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->access$000(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/RoateTextView;

    .line 143
    invoke-virtual {p2}, Lcom/powervision/gcs/view/RoateTextView;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
