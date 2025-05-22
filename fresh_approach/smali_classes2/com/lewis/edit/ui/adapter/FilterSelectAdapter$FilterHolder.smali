.class Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilterSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterHolder"
.end annotation


# instance fields
.field private filterImage:Landroid/widget/ImageView;

.field private filterName:Landroid/widget/TextView;

.field private filterSelect:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    sget v0, Lcom/lewis/edit/R$id;->filter_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterImage:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/lewis/edit/R$id;->filter_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterName:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/lewis/edit/R$id;->select_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterSelect:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->filterSelect:Landroid/widget/ImageView;

    return-object p0
.end method
