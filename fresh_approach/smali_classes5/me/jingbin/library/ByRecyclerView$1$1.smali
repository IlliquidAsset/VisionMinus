.class Lme/jingbin/library/ByRecyclerView$1$1;
.super Ljava/lang/Object;
.source "ByRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/jingbin/library/ByRecyclerView$1;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView$1;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$1$1;->this$1:Lme/jingbin/library/ByRecyclerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$1$1;->this$1:Lme/jingbin/library/ByRecyclerView$1;

    iget-object v0, v0, Lme/jingbin/library/ByRecyclerView$1;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$400(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    move-result-object v0

    invoke-interface {v0}, Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;->onLoadMore()V

    return-void
.end method
