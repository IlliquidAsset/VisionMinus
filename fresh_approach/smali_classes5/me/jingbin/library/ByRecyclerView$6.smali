.class Lme/jingbin/library/ByRecyclerView$6;
.super Ljava/lang/Object;
.source "ByRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView;->bindViewClickListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/ByRecyclerView;

.field final synthetic val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$6;->this$0:Lme/jingbin/library/ByRecyclerView;

    iput-object p2, p0, Lme/jingbin/library/ByRecyclerView$6;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 756
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView$6;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {v0}, Lme/jingbin/library/ByRecyclerView;->access$1500(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView$6;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    iget-object v2, p0, Lme/jingbin/library/ByRecyclerView$6;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v2}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, p1, v1}, Lme/jingbin/library/ByRecyclerView$OnItemClickListener;->onClick(Landroid/view/View;I)V

    return-void
.end method
