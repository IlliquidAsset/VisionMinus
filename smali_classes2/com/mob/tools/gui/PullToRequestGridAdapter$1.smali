.class Lcom/mob/tools/gui/PullToRequestGridAdapter$1;
.super Ljava/lang/Object;
.source "PullToRequestGridAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRequestGridAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRequestGridAdapter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .line 36
    iput p2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->firstVisibleItem:I

    .line 37
    iput p3, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->visibleItemCount:I

    add-int/lit8 v0, p3, -0x1

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    add-int v2, p2, p3

    if-ne v2, p4, :cond_0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-static {v1, p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$302(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z

    .line 41
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$400(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->onScroll(Lcom/mob/tools/gui/Scrollable;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$002(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z

    if-nez p2, :cond_2

    .line 26
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object p1

    iget p2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->firstVisibleItem:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->visibleItemCount:I

    invoke-interface {p1, p2, v0}, Lcom/mob/tools/gui/OnListStopScrollListener;->onListStopScrolling(II)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 29
    iget-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method
