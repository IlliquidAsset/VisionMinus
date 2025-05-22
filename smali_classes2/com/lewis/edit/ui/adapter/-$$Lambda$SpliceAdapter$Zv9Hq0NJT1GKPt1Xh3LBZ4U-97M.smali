.class public final synthetic Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/adapter/SpliceAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;->f$0:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;->f$0:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->lambda$onBindViewHolder$0$SpliceAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method
