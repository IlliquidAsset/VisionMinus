.class Lme/jingbin/library/adapter/BaseByViewHolder$2;
.super Ljava/lang/Object;
.source "BaseByViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/adapter/BaseByViewHolder;->addOnLongClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;
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

    .line 430
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByViewHolder$2;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 433
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$2;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$000(Lme/jingbin/library/adapter/BaseByViewHolder;)V

    .line 434
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$2;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$100(Lme/jingbin/library/adapter/BaseByViewHolder;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getOnItemChildLongClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder$2;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    .line 435
    invoke-static {v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$100(Lme/jingbin/library/adapter/BaseByViewHolder;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getOnItemChildLongClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByViewHolder$2;->this$0:Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-static {v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->access$200(Lme/jingbin/library/adapter/BaseByViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;->onItemChildLongClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
