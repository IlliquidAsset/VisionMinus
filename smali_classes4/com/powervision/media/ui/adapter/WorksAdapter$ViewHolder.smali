.class public Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WorksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/WorksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mTextDate:Landroid/widget/TextView;

.field mTextType:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    sget v0, Lcom/powervision/media/R$id;->image_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/powervision/media/R$id;->text_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/powervision/media/R$id;->text_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mTextType:Landroid/widget/TextView;

    return-void
.end method
