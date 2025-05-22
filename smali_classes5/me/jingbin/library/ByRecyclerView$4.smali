.class Lme/jingbin/library/ByRecyclerView$4;
.super Ljava/lang/Object;
.source "ByRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView;->onScrollStateChanged(I)V
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

    .line 350
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$4;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 353
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$4;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$400(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    move-result-object v0

    invoke-interface {v0}, Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;->onLoadMore()V

    return-void
.end method
