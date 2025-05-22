.class Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;
.super Lme/jingbin/library/adapter/BaseByViewHolder;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/adapter/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/adapter/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lme/jingbin/library/adapter/BaseRecyclerAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;->this$0:Lme/jingbin/library/adapter/BaseRecyclerAdapter;

    .line 38
    invoke-direct {p0, p2, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseRecyclerAdapter$ViewHolder;->this$0:Lme/jingbin/library/adapter/BaseRecyclerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lme/jingbin/library/adapter/BaseRecyclerAdapter;->bindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V

    return-void
.end method
