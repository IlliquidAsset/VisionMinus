.class Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListHolder"
.end annotation


# instance fields
.field private mResource:Landroid/widget/ImageView;

.field private mResourceTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lewis/edit/ui/adapter/ListAdapter;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/adapter/ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->this$0:Lcom/lewis/edit/ui/adapter/ListAdapter;

    .line 78
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    sget p1, Lcom/lewis/edit/R$id;->image_resource:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->mResource:Landroid/widget/ImageView;

    .line 81
    sget p1, Lcom/lewis/edit/R$id;->resource_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->mResourceTitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->mResource:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->mResourceTitle:Landroid/widget/TextView;

    return-object p0
.end method
