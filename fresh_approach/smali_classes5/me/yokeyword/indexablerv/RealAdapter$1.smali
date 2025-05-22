.class Lme/yokeyword/indexablerv/RealAdapter$1;
.super Ljava/lang/Object;
.source "RealAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/RealAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/RealAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$viewType:I


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/RealAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    iput-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$viewType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v1}, Lme/yokeyword/indexablerv/RealAdapter;->access$000(Lme/yokeyword/indexablerv/RealAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 109
    iget v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$viewType:I

    const v3, 0x7ffffffe

    if-ne v2, v3, :cond_1

    .line 110
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$100(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$100(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v2

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;->onItemClick(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 114
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$200(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$200(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;

    move-result-object v2

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getOriginalPosition()I

    move-result v3

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v3, v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;->onItemClick(Landroid/view/View;IILjava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$300(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 120
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$300(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    goto :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$400(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$1;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    :goto_0
    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {v2}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getOnItemClickListener()Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 128
    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
