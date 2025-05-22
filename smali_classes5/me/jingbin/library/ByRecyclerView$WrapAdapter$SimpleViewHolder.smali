.class Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;
.super Lme/jingbin/library/adapter/BaseByViewHolder;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/ByRecyclerView$WrapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView$WrapAdapter;Landroid/view/View;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$WrapAdapter$SimpleViewHolder;->this$1:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    .line 666
    invoke-direct {p0, p2}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
