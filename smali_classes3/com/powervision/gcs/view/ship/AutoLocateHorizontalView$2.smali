.class Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "AutoLocateHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$500(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyDataSetChanged()V

    .line 184
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$700(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$500(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {p2, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$800(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 195
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$500(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$2;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {p2, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$900(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)V

    return-void
.end method
