.class Lme/jingbin/library/adapter/BaseByViewHolder$1;
.super Ljava/lang/Object;
.source "BaseByViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/adapter/BaseByViewHolder;->addOnClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/adapter/BaseByViewHolder;


# direct methods
.method constructor <init>(Lme/jingbin/library/adapter/BaseByViewHolder;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByViewHolder$1;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$1;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$000(Lme/jingbin/library/adapter/BaseByViewHolder;)V

    .line 407
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$1;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$100(Lme/jingbin/library/adapter/BaseByViewHolder;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getOnItemChildClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$1;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$100(Lme/jingbin/library/adapter/BaseByViewHolder;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getOnItemChildClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByViewHolder$1;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$200(Lme/jingbin/library/adapter/BaseByViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;->onItemChildClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
