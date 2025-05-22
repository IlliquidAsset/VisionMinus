.class Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 137
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 140
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemChanged(I)V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 146
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 149
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 155
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 158
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemInserted(I)V

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .line 128
    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq p3, v0, :cond_1

    .line 131
    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemMoved(II)V

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 119
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 122
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemRemoved(I)V

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;->this$0:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    return-void
.end method
