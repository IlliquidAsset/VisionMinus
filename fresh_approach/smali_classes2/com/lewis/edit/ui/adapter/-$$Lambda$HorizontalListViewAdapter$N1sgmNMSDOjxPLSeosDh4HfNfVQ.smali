.class public final synthetic Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;->f$0:Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;

    iput p2, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;->f$0:Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;

    iget v1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->lambda$getView$0$HorizontalListViewAdapter(ILandroid/view/View;)V

    return-void
.end method
