.class Lme/yokeyword/indexablerv/RealAdapter$2;
.super Ljava/lang/Object;
.source "RealAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 135
    iput-object p1, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    iput-object p2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$viewType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 138
    iget-object v0, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 139
    iget-object v1, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v1}, Lme/yokeyword/indexablerv/RealAdapter;->access$000(Lme/yokeyword/indexablerv/RealAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 140
    iget v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$viewType:I

    const/4 v3, 0x1

    const v4, 0x7ffffffe

    if-ne v2, v4, :cond_1

    .line 141
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$500(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$500(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;

    move-result-object v2

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleLongClickListener;->onItemLongClick(Landroid/view/View;ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v3

    :cond_1
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_3

    .line 147
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$600(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$600(Lme/yokeyword/indexablerv/RealAdapter;)Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;

    move-result-object v2

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getOriginalPosition()I

    move-result v3

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v3, v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentLongClickListener;->onItemLongClick(Landroid/view/View;IILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v3

    .line 154
    :cond_3
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$300(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 155
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$300(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    goto :goto_0

    .line 157
    :cond_4
    iget-object v2, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->this$0:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-static {v2}, Lme/yokeyword/indexablerv/RealAdapter;->access$400(Lme/yokeyword/indexablerv/RealAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lme/yokeyword/indexablerv/RealAdapter$2;->val$viewType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;

    :goto_0
    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {v2}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter;->getOnItemLongClickListener()Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 163
    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lme/yokeyword/indexablerv/AbstractHeaderFooterAdapter$OnItemLongClickListener;->onItemLongClick(Landroid/view/View;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
