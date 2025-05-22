.class Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/SpliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpliceViewHolder"
.end annotation


# instance fields
.field private mSpliceImage:Landroid/widget/ImageView;

.field private mSpliceSelect:Landroid/widget/ImageView;

.field private mSpliceTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    sget v0, Lcom/lewis/edit/R$id;->splice_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceImage:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/lewis/edit/R$id;->splice_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceTime:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/lewis/edit/R$id;->splice_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceSelect:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->mSpliceSelect:Landroid/widget/ImageView;

    return-object p0
.end method
