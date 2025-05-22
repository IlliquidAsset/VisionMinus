.class Lme/jingbin/library/ByRecyclerView$DataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/ByRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/ByRecyclerView;


# direct methods
.method private constructor <init>(Lme/jingbin/library/ByRecyclerView;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/jingbin/library/ByRecyclerView;Lme/jingbin/library/ByRecyclerView$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView$DataObserver;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 443
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 455
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 450
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 470
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p3}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 465
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$DataObserver;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
