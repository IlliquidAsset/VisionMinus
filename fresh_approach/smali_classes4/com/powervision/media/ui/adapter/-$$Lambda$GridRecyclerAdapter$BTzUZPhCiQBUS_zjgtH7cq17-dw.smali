.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

.field public final synthetic f$1:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;->f$1:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;->f$1:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->lambda$onBindViewHolder$1$GridRecyclerAdapter(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;Landroid/view/View;)V

    return-void
.end method
