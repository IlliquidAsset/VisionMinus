.class Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView$WrapAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iput-object p2, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 605
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 606
    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 607
    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 608
    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 609
    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 610
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
