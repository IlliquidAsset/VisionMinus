.class Lme/jingbin/library/ByRecyclerView$1;
.super Ljava/lang/Object;
.source "ByRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView;->loadMoreFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/ByRecyclerView;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 198
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lme/jingbin/library/ByRecyclerView;->access$102(Lme/jingbin/library/ByRecyclerView;Z)Z

    .line 199
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p1}, Lme/jingbin/library/ByRecyclerView;->access$200(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/BaseLoadMore;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    .line 200
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p1}, Lme/jingbin/library/ByRecyclerView;->access$300(Lme/jingbin/library/ByRecyclerView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 201
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p1}, Lme/jingbin/library/ByRecyclerView;->access$400(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    move-result-object p1

    invoke-interface {p1}, Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;->onLoadMore()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    new-instance v0, Lme/jingbin/library/ByRecyclerView$1$1;

    invoke-direct {v0, p0}, Lme/jingbin/library/ByRecyclerView$1$1;-><init>(Lme/jingbin/library/ByRecyclerView$1;)V

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    .line 208
    invoke-static {v1}, Lme/jingbin/library/ByRecyclerView;->access$300(Lme/jingbin/library/ByRecyclerView;)J

    move-result-wide v1

    .line 203
    invoke-virtual {p1, v0, v1, v2}, Lme/jingbin/library/ByRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
